import Nui from '../../util/Nui'; // Assuming Nui.send is still the way to communicate to Lua NUI callbacks

export const initialState = {
	showing: process.env.NODE_ENV != 'production', // Keep for development/testing
	alerts: Array(),
	units: {}, // Changed from Array() to {} to match server structure (job: [units])
	myUnit: null,
	dispatchExpanded: true,
	dispatchLog: Array(),
	radioNames: Array(),
	attached: Array(), // Keeps track of alerts the unit is attached to
	// Removed socketConnected and socketInitialised as WebSocket is gone
	// Removed socket object from state
	rosterSections: {}, // Will be initialized in ALERTS_INIT
};

export default (state = initialState, action) => {
	switch (action.type) {
		case 'RESET_ALERTS': // This seems like a local client action, keep as is
			return {
				...initialState, // Reset to a clean state, NUI might need re-init from server after this
				showing: state.showing // Preserve showing state if needed
			};
		case 'SET_SHOWING': // UI visibility, keep as is
			return {
				...state,
				showing: action.payload.state,
			};
		case 'TOGGLE_DISPATCH_LOG': // UI toggle, keep as is
			return {
				...state,
				dispatchExpanded: !state.dispatchExpanded,
			};
		case 'TOGGLE_ROSTER_SECTION': // UI toggle, keep as is
			return {
				...state,
				rosterSections: {
					...state.rosterSections,
					[action.payload.type]: !state.rosterSections[action.payload.type],
				},
			};
		case 'ADD_ALERT': // Triggered by NUI message from Lua
			Nui.send('ReceiveAlert', action.payload.alert); // This was already here, good for blips/sounds
			return {
				...state,
				alerts: [
					...state.alerts.filter(
						(alert) => alert.time >= Date.now() - 60000 * 30 || (alert.attached && alert.attached.length > 0),
					),
					{
						...action.payload.alert,
						onScreen: true, // NUI specific flag
						time: action.payload.alert.time || Date.now(), // Use server time if provided, else client time
					},
				],
			};
		case 'REMOVE_ALERT': // Triggered by NUI message from Lua or by client action
			// Nui.send('RemoveAlert', { id: action.payload.id }); // This was already here
			return {
				...state,
				alerts: state.alerts.filter((alert) => alert.id !== action.payload.id),
				attached: state.attached.filter(id => id !== action.payload.id), // Also remove from attached list
			};
		case 'UPDATE_ALERT_UNITS': // Triggered by NUI message from Lua
			if (action.payload.id && state.alerts && state.myUnit && state.units) {
				const myUnitJob = state.myUnit.job;
				const myUnitPrimary = state.myUnit.primary;
				const myUnitData = state.units[myUnitJob]?.find((u) => u?.primary === myUnitPrimary);
				
				const meAttached = myUnitData ? action.payload.units.includes(
					myUnitData.operatingUnder != null ? myUnitData.operatingUnder : myUnitPrimary,
				) : false;

				let newAttached = [...state.attached];
				const isCurrentlyAttached = state.attached.includes(action.payload.id);

				if (meAttached && !isCurrentlyAttached) {
					Nui.send('AssignedToAlert', action.payload.id); // Sound notification
					newAttached.push(action.payload.id);
				} else if (!meAttached && isCurrentlyAttached) {
					newAttached = newAttached.filter(id => id !== action.payload.id);
				}

				return {
					...state,
					alerts: state.alerts.map((a) => {
						if (a.id === action.payload.id) {
							return { ...a, attached: action.payload.units };
						} else {
							return a;
						}
					}),
					attached: newAttached,
				};
			} else return state;
		case 'ADD_UNIT': // This case might be deprecated if UPDATE_ALL_UNITS is comprehensive
			// Or used for single unit additions if still needed.
			// For now, let's assume UPDATE_ALL_UNITS handles this.
			// If it's truly an incremental add, the logic would be:
			// const jobUnits = state.units[action.payload.unit.job] ? [...state.units[action.payload.unit.job]] : [];
			// jobUnits.push(action.payload.unit);
			// return {
			// 	...state,
			// 	units: {
			// 		...state.units,
			// 		[action.payload.unit.job]: jobUnits,
			// 	},
			// };
			return state; // Assuming UPDATE_ALL_UNITS is primary
		case 'REMOVE_UNIT': // This case might be deprecated if UPDATE_ALL_UNITS is comprehensive
			// If it's truly an incremental remove, the logic would be:
			// if (state.units[action.payload.job]) {
			// 	return {
			// 		...state,
			// 		units: {
			// 			...state.units,
			// 			[action.payload.job]: state.units[action.payload.job].filter(
			// 				(unit) => unit.source !== action.payload.source, // Assuming source is unique identifier
			// 			),
			// 		},
			// 	};
			// } else {
			// 	return state;
			// }
			return state; // Assuming UPDATE_ALL_UNITS is primary
		case 'UPDATE_UNIT_DATA': // Triggered by NUI message from Lua
			// console.log("[DEBUG] New UPDATE_UNIT_DATA:", JSON.stringify(action.payload, null, 2));
			if (action.payload.job && state.units[action.payload.job]) {
				return {
					...state,
					units: {
						...state.units,
						[action.payload.job]: state.units[action.payload.job].map((u) => {
							if (u.primary == action.payload.primary) { // primary is callsign
								return {
									...u,
									[action.payload.key]: action.payload.value,
								};
							} else {
								return u;
							}
						}),
					},
				};
			} else {
				return state;
			}
		case 'OPERATE_UNDER_UNIT': // Triggered by NUI message from Lua
			return {
				...state,
				units: {
					...state.units,
					[action.payload.job]: state.units[action.payload.job]?.map((u) => {
						if (u.primary == action.payload.callsign) { // callsign is the unit attaching
							return {
								...u,
								operatingUnder: action.payload.primary, // primary is the unit being attached to
							};
						} else {
							return u;
						}
					}),
				},
			};
		case 'BREAK_OFF_UNIT': // Triggered by NUI message from Lua
			return {
				...state,
				units: {
					...state.units,
					[action.payload.job]: state.units[action.payload.job]?.map((u) => {
						if (u.primary == action.payload.callsign) { // callsign is the unit breaking off
							return {
								...u,
								operatingUnder: null,
							};
						} else {
							return u;
						}
					}),
				},
			};
		case 'UPDATE_RADIO_INFO': // Triggered by NUI message from Lua
			return {
				...state,
				radioNames: action.payload.data, // data is the full list of radio names
			};
		case 'ADD_DISPATCH_LOG': // Triggered by NUI message from Lua
			// console.log("[DEBUG] ADD_DISPATCH_LOG action received");
			// console.log("[DEBUG] Current dispatchLog length:", state.dispatchLog.length);

			const data = [...state.dispatchLog];
			if (data.length > 200) {
				data.shift();
				// console.log("[DEBUG] dispatchLog exceeded 200 entries, removed oldest entry");
			}

			// console.log("[DEBUG] New log entry:", JSON.stringify(action.payload.data, null, 2));

			return {
				...state,
				dispatchLog: [...data, action.payload.data], // data is the new log entry
			};
		case 'UPDATE_MY_UNIT':
			return {
				...state,
				myUnit: action.payload.myUnit,
			};
		case 'ALERTS_INIT':
			const rosterSections = {
				police: false,
				ems: false,
				prison: false,
				tow: false,
				...(action.payload.myUnit && {
					[action.payload.myUnit.job]: true
				}),
			};
			return {
				...state,
				units: action.payload.units || {
					police: [],
					ems: [],
					prison: [],
					tow: []
				},
				alerts: action.payload.alerts || [],
				myUnit: action.payload.myUnit,
				radioNames: action.payload.radioNames || [],
				dispatchLog: action.payload.dispatchLog || [],
				rosterSections,
			};
		case 'ALERTS_DISCONNECTED': // Replaces ALERTS_WS_DISCONNECT, signifies off-duty
			return {
				...initialState, // Reset to initial state
				showing: state.showing // Preserve showing state if needed
			};
		case 'UPDATE_ALL_UNITS': // New action to update all units, from EmergencyAlerts:Client:UpdateMembers
			// console.log("[DEBUG] UPDATE_ALL_UNITS:", JSON.stringify(action.payload, null, 2));
			return {
				...state,
				units: action.payload.units || {},
			};

		// Actions that previously emitted to WebSocket now send NUI messages to Lua client-side
		// These are handled by components dispatching actions, then NUI.send in middleware or thunks (not directly in reducer)
		// Example: ALERTS_CHANGE_UNIT_TYPE would be dispatched by a component,
		// a middleware/thunk would Nui.send('EmergencyAlerts:NUI:ChangeUnitType', payload)
		// then server would handle it and broadcast an update (e.g., UPDATE_UNIT_DATA or UPDATE_ALL_UNITS)

		// Removing old WebSocket specific actions
		// case 'ALERTS_WS_CONNECT': (handled by ALERTS_INIT)
		// case 'ALERTS_WS_STATE': (no longer needed)
		// case 'ALERTS_WS_DISCONNECT': (handled by ALERTS_DISCONNECTED)

		default:
			return state;
	}
};

