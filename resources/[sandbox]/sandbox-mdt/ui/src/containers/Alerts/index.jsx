import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { makeStyles } from '@mui/styles';

import { usePermissions } from '../../hooks';
import Notifications from './Notifications';
import Roster from './Roster';
import Dispatch from './Dispatch';
import { ErrorBoundary } from '../../components';
import Nui from '../../util/Nui';

export default () => {
	const showing = useSelector((state) => state.alerts.showing);
	const job = useSelector((state) => state.app.govJob);
	const initialised = useSelector((state) => state.alerts.myUnit != null);

	const dispatch = useDispatch();

	const useStyles = makeStyles((theme) => ({
		container: {
			height: '100%',
			width: '100%',
			maxWidth: 1000,
			position: 'fixed',
			top: 0,
			bottom: 0,
			right: 0,
			paddingTop: 20,
			margin: 'auto',
			zIndex: showing ? 1 : -1,
		},
	}));

	useEffect(() => {
		// Log initialization state
		// console.log('Component mounted');
		// console.log('showing:', showing);
		// console.log('job:', job);
		// console.log('initialised (myUnit != null):', initialised);
		// Optional NUI handshake
		// Nui.send('NUIReady');
	}, [dispatch, showing, job, initialised]);

	const classes = useStyles();
	const hasPerm = usePermissions();

	// console.log('hasPerm police_alerts:', hasPerm('police_alerts'));
	// console.log('hasPerm ems_alerts:', hasPerm('ems_alerts'));
	// console.log('hasPerm tow_alerts:', hasPerm('tow_alerts'));
	// console.log('hasPerm doc_alerts:', hasPerm('doc_alerts'));

	if (!hasPerm('police_alerts') && !hasPerm('ems_alerts') && !hasPerm('tow_alerts') && !hasPerm('doc_alerts')) {
		// console.log('User does not have any alert permissions. Rendering null.');
		return null;
	}

	if (!initialised) {
		// console.log('Alerts NUI not yet initialized by server (myUnit is null).');
		return null;
	}

	// console.log('Rendering Alerts UI');
	return (
		<>
			<div className={classes.container}>
				<Notifications />
				<ErrorBoundary>{showing && <Roster />}</ErrorBoundary>
			</div>
			{showing && job && job.Id !== "tow" && <Dispatch />}
		</>
	);
};
