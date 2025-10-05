import React, { useEffect, useState, useMemo } from 'react';
import { useDispatch, useSelector } from "react-redux"
import { Slide, Chip, IconButton, Grid, Autocomplete, TextField, ListItem, ListItemText } from "@mui/material"
import { makeStyles } from "@mui/styles"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import Moment from "react-moment"
import Truncate from "@nosferatu500/react-truncate"

import { GetCloseColorName } from "../../../util/CloseColor"
import Nui from "../../../util/Nui"
import { usePermissions } from "../../../hooks"

const useStyles = makeStyles((theme) => ({
  wrapper: {
    borderLeft: `6px solid ${theme.palette.primary.dark}`,
    padding: "5px 10px",
    background: `${theme.palette.secondary.main}c9`,
    marginBottom: 10,
    "&.type-1": {
      borderLeft: `6px solid ${theme.palette.info.dark}`,
      background: `${theme.palette.info.main}c9`,
      "&.panic": {
        "-webkit-animation": "pd-panic 1s infinite, pd-panic-border 1s infinite",
      },
    },
    "&.type-2": {
      borderLeft: `6px solid #2b0215`,
      background: `#760036c9`,
      "&.panic": {
        "-webkit-animation": "ems-panic 1s infinite",
      },
    },
    "&.type-3": {
      borderLeft: `6px solid #270d3d`,
      background: `#6818adc9`,
      "&.panic": {
        "-webkit-animation": "misc-panic 1s infinite, misc-panic-border 1s infinite",
      },
    },
  },
  chip: {
    margin: "0 6px",
    "&.id": {
      backgroundColor: theme.palette.text.main,
      color: theme.palette.secondary.dark,
    },
    "&.code": {
      backgroundColor: theme.palette.warning.main,
    },
  },
  icon: {
    marginRight: 5,
  },
  minor: {
    fontSize: 14,
  },
  minor2: {
    display: "grid",
    gridTemplateColumns: "3fr 1fr 7fr",
    fontSize: 14,
    justifyContent: "center",
    alignItems: "center",
  },
  item: {
    marginRight: 5,
    border: `1px solid ${theme.palette.border.divider}`,
    fontWeight: 500,
    lineHeight: 0.9,
  },
  option: {
    padding: "0 15px",
  },
}))

const deptNames = {
  police: "PD",
  prison: "DOC",
  ems: "EMS",
}

export default ({ alert }) => {
  const classes = useStyles()
  const dispatch = useDispatch()
  const hasPerm = usePermissions()
  const showing = useSelector((state) => state.alerts.showing)
  const units = useSelector((state) => state.alerts.units)
  const myUnit = useSelector((state) => state.alerts.myUnit)
  const myUnitData = units?.[myUnit.job].find((u) => u.primary === myUnit.primary)
  const my1Callsign = myUnitData?.operatingUnder || myUnitData?.primary;

  const meAttached = alert?.attached?.includes(my1Callsign);


  const [onScreen, setOnScreen] = useState(alert.onScreen)

  const unitOptions = useMemo(() => {
    return Object.values(units)
      .reduce((arr, item) => {
        return [...arr, ...item]
      }, Array())
      .filter((u) => u.operatingUnder === null)
      .sort((a, b) => a.primary - b.primary)
      .map((item) => item.primary)
  }, [units])

  const allSubUnits = useMemo(() => {
    return Object.values(units)
      .reduce((arr, item) => {
        return [...arr, ...item]
      }, Array())
      .filter((u) => u.operatingUnder !== null)
  }, [units])

  const unitJobCountText = useMemo(() => {
    const res = {}

    const allUnits = Object.values(units).reduce((acc, cur) => [...acc, ...cur], [])

    alert.attached.forEach((callsign) => {
      const member = allUnits.find((unit) => unit.primary === callsign)

      if (member && member.job) {
        if (!res[member.job]) {
          res[member.job] = 1 + allSubUnits.filter((u) => u.operatingUnder === callsign).length ?? 0
        } else {
          res[member.job] += 1 + allSubUnits.filter((u) => u.operatingUnder === callsign).length ?? 0
        }
      }
    })

    const text = []

    Object.keys(res).forEach((dept) => {
      if (res[dept] && res[dept] > 0) {
        text.push(`${deptNames[dept]}: ${res[dept]}`)
      }
    })

    return text.join(" | ")
  }, [units, alert.attached])

  useEffect(() => {
    setOnScreen(true); // تأكد انه يظهر
    const timeout = setTimeout(() => {
      setOnScreen(false);
    }, 10000); // 10 ثواني ثابتة

    return () => clearTimeout(timeout);
  }, []);


  const onAnimEnd = () => {
    dispatch({
      type: "EXPIRE_ALERT",
      payload: alert.id,
    })
  }

  const onRoute = () => {
    Nui.send("RouteAlert", alert)
  }

  const onCamera = () => {
    Nui.send("ViewCamera", alert)
  }

  const getIcon = () => {
    switch (alert.style) {
      case 1:
        return <FontAwesomeIcon icon={["fas", "siren-on"]} />
      case 2:
        return <FontAwesomeIcon icon={["fas", "truck-medical"]} />
      case 3:
        return <FontAwesomeIcon icon={["fas", "truck-ramp"]} />
    }
  }

  const onUpdateUnits = (newUnits) => {
    Nui.send("NUI:UpdateAlertUnits", {
      id: alert.id, // Correct ID from alert prop
      units: newUnits, // Updated units array
    })
  }

  const [confirm, setConfirm] = useState(false)

  const onDelete = () => {
    // Only send the delete command if confirmed
    Nui.send("NUI:RemoveAlert", { id: alert.id })
    // Close the modal after deletion
    setConfirm(false)
  }

  const hasAttaching = !alert.client && myUnit?.job != "prison" && myUnit?.job != "tow"

  const getInner = () => {
    return (
      <div className={`${classes.wrapper} type-${alert.style}${alert.panic ? " panic" : ""}`}>
        <Grid container>
          <Grid
            item
            xs={Boolean(alert) || Boolean(alert.camera) ? 11 : 12}
            style={{ display: "flex", flexDirection: "column", justifyContent: "space-between" }}
          >
            <div style={{ display: "flex", alignItems: "center" }}>
              {meAttached && <FontAwesomeIcon size="xs" icon={["fas", "thumbtack"]} style={{ marginRight: 10 }} />}
              {getIcon()}
              <Chip className={`${classes.chip} code`} size="small" label={alert.code} />
              <Truncate lines={1}>{alert.title}</Truncate>
            </div>
            {Boolean(alert.description) && (
              <>
                <div className={classes.minor}>
                  <FontAwesomeIcon
                    className={classes.icon}
                    icon={["fas", Boolean(alert?.description?.icon) ? alert?.description?.icon : "question"]}
                  />
                  <b>{alert.description.details}</b>
                </div>
                {Boolean(alert.description.vehicleColor) && (
                  <div className={classes.minor}>
                    <Grid container direction="row">
                      <Grid item xs={5}>
                        <FontAwesomeIcon
                          className={classes.icon}
                          style={{
                            color: `rgb(${alert.description.vehicleColor.r}, ${alert.description.vehicleColor.g}, ${alert.description.vehicleColor.b})`,
                          }}
                          icon={["fas", "palette"]}
                        />
                        <b>
                          {GetCloseColorName(
                            alert.description.vehicleColor.r,
                            alert.description.vehicleColor.g,
                            alert.description.vehicleColor.b,
                          )}
                        </b>
                      </Grid>
                      {Boolean(alert.description.vehiclePlate) && (
                        <Grid item xs={4}>
                          <FontAwesomeIcon className={classes.icon} icon={["fas", "closed-captioning"]} />
                          <b>{alert.description.vehiclePlate}</b>
                        </Grid>
                      )}
                      {Boolean(alert.description.vehicleClass) && (
                        <Grid item xs={3}>
                          <FontAwesomeIcon className={classes.icon} icon={["fas", "circle-info"]} />
                          Class: <b>{alert.description.vehicleClass}</b>
                        </Grid>
                      )}
                    </Grid>
                  </div>
                )}
              </>
            )}
            {Boolean(alert.location) ? (
              <div className={classes.minor}>
                <FontAwesomeIcon className={classes.icon} icon={["fas", "location"]} />
                {alert.location.street1} {alert.location.street2 && `/ ${alert.location.street2} `}|{" "}
                {alert.location.area}
              </div>
            ) : (
              <div className={classes.minor}>
                <FontAwesomeIcon className={classes.icon} icon={["fas", "location"]} />
                Unknown Location
              </div>
            )}
            <div className={classes.minor2}>
              <div>
                <FontAwesomeIcon className={classes.icon} icon={["fas", "stopwatch"]} />
                <Moment date={alert.time} fromNow />
              </div>
              {hasAttaching && (
                <div>
					<IconButton
					onClick={() => {
						if (!myUnitData) return;
						// Tell the server to toggle this unit's attachment
						Nui.send("NUI:ToggleUnitAttachment", {
						id: alert.id,
						attach: !meAttached, // true = attach, false = detach
						});
					}}
					>
					<FontAwesomeIcon
						style={{ fontSize: 15, margin: "auto" }}
						icon={["fas", meAttached ? "link-slash" : "link"]}
					/>
					</IconButton>
                </div>
              )}
              {hasAttaching && (
                <div>
                  <Autocomplete
                    fullWidth
                    multiple
                    size="small"
                    className={classes.editorField}
                    options={unitOptions}
                    autoComplete
                    includeInputInList
                    autoHighlight
                    filterSelectedOptions
                    value={alert.attached}
                    onChange={(e, val, reason) => {
                      onUpdateUnits(val)
                    }}
                    renderInput={(params) => (
                      <TextField
                        {...params}
                        name={"units"}
                        //label={"Units"}
                        fullWidth
                        variant="standard"
                        size="small"
                        endadornment={null}
                        helperText={unitJobCountText.length > 0 ? `Numbers: ${unitJobCountText}` : null}
                        FormHelperTextProps={{
                          sx: {
                            marginTop: 0,
                          },
                        }}
                      />
                    )}
                    renderTags={(value, getTagProps) => {
                      const myCallsign = myUnitData?.operatingUnder ? myUnitData?.operatingUnder : myUnitData?.primary
                      if (value.includes(myCallsign)) {
                        value = [myCallsign, ...value.filter((u) => u !== myCallsign)]
                      }

                      return value.map((option, index) => {
                        return (
                          <Chip
                            key={index}
                            color="default"
                            className={classes.item}
                            style={{
                              backgroundColor: "rgba(0, 0, 0, 0.4)",
                              borderRadius: 5,
                              border: "none",
                              fontWeight: option == myCallsign ? 600 : 500,
                              margin: 0,
                              marginRight: 2,
                            }}
                            size="small"
                            variant="outlined"
                            label={`${option === myUnitData.primary || option === myUnitData.operatingUnder ? "[You] " : ""}${option} ${allSubUnits.filter((u) => u.operatingUnder === option)?.length > 0 ? `(+${allSubUnits.filter((u) => u.operatingUnder === option)?.length})` : ""}`}
                            {...getTagProps({ index })}
                          />
                        )
                      })
                    }}
                    renderOption={(props, option) => {
                      return (
                        <ListItem button {...props} key={option} className={classes.option}>
                          <ListItemText primary={option} />
                        </ListItem>
                      )
                    }}
                  />
                </div>
              )}
            </div>
          </Grid>
          {Boolean(alert) && (
            <Grid
              item
              xs={1}
              style={{
                textAlign: "right",
                display: "flex",
                flexDirection: "column",
                justifyContent: "center",
                alignContent: "right",
              }}
            >
              {Boolean(alert) && (
                <IconButton onClick={() => setConfirm(true)} style={{ marginLeft: "auto" }}>
                  <FontAwesomeIcon size="2xs" icon={["fas", "x"]} />
                </IconButton>
              )}
              {Boolean(alert.location) && (
                <IconButton onClick={onRoute} style={{ marginLeft: "auto" }}>
                  <FontAwesomeIcon size="xs" icon={["fas", "location"]} />
                </IconButton>
              )}
              {Boolean(alert.camera) && (
                <IconButton onClick={onCamera} style={{ marginLeft: "auto" }}>
                  <FontAwesomeIcon size="2xs" icon={["fas", "camera"]} />
                </IconButton>
              )}
            </Grid>
          )}
        </Grid>
        {confirm && (
          <div
            style={{
              position: "absolute",
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              backgroundColor: "rgba(0, 0, 0, 0.7)",
              zIndex: 1000,
              display: "flex",
              justifyContent: "center",
              alignItems: "center",
            }}
          >
            <div
              style={{
                backgroundColor: "#333",
                padding: "20px",
                borderRadius: "8px",
                maxWidth: "300px",
                width: "100%",
                boxShadow: "0 4px 8px rgba(0, 0, 0, 0.2)",
              }}
            >
              <h3 style={{ margin: "0 0 15px 0", color: "#fff", textAlign: "center" }}>Confirm Deletion</h3>
              <p style={{ margin: "0 0 20px 0", color: "#fff", textAlign: "center" }}>
                Are you sure you want to delete this alert?
              </p>
              <div style={{ display: "flex", justifyContent: "center", gap: "10px" }}>
                <button
                  onClick={onDelete}
                  style={{
                    padding: "8px 16px",
                    background: "#d32f2f",
                    color: "white",
                    border: "none",
                    borderRadius: "4px",
                    cursor: "pointer",
                  }}
                >
                  Yes, Delete
                </button>
                <button
                  onClick={() => setConfirm(false)}
                  style={{
                    padding: "8px 16px",
                    background: "#424242",
                    color: "white",
                    border: "none",
                    borderRadius: "4px",
                    cursor: "pointer",
                  }}
                >
                  Cancel
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    )
  }

  if (showing) {
    return <div>{getInner()}</div>
  } else {
    return (
      <Slide in={onScreen} direction="left" onExited={onAnimEnd}>
        {getInner()}
      </Slide>
    )
  }
}
