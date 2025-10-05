import React, { useState, useRef, useEffect } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { Grid, TextField } from '@mui/material';
import { makeStyles } from '@mui/styles';

import RadioItem from './components/RadioItem';
import { Modal } from '../../components';

import Nui from '../../util/Nui';

const useStyles = makeStyles((theme) => ({
    radioContainer: {
        height: 40,
        background: `${theme.palette.secondary.dark}CC`,
    },
    radioInner: {
        height: '100%',
        display: 'flex',
        flexDirection: 'row',
        padding: '4px 5px',
        overflowX: 'auto',
        flexWrap: 'nowrap',

        '&::-webkit-scrollbar': {
            display: 'none',
            visibility: 'hidden',
        }
    }
}));

const initialState = {
    radio: "",
    text: "",
}

export default () => {
    const classes = useStyles();
    const dispatch = useDispatch();
    const [open, setOpen] = useState(0);
    const [state, setState] = useState({ ...initialState });
    const ref = useRef();

    const radios = useSelector((state) => state.alerts.radioNames);

    const onAdd = () => {
        setState({ ...initialState })
        setOpen(1);
    };

    const onUpdate = (id, radio, text) => {
        setState({
            id,
            radio,
            text,
        });
        setOpen(2);
    }

    const setRadio = (freq, text) => {
        try {
            Nui.send("SwapToRadio", {
                radio: (+freq).toFixed(1),
                text: text
            });
        } catch (e) { }
    }

    const confirmAdd = (e) => {
        e.preventDefault();
        Nui.send('NUI:AddRadioInfo', {
            radio: state.radio,
            text: state.text,
        });
        setOpen(0);
    };

    const confirmUpdate = (e) => {
        e.preventDefault();
        Nui.send('NUI:UpdateRadioInfo', {
            id: state.id,
            radio: state.radio,
            text: state.text,
        });
        setOpen(0);
    }

    const directDelete = (id) => {
        Nui.send('NUI:RemoveRadioInfo', { id });
        setOpen(0);
    }

    useEffect(() => {
        const el = ref.current;
        if (el) {
            const onWheel = e => {
                if (e.deltaY == 0) return;
                e.preventDefault();
                el.scrollLeft += e.deltaY * 0.5
            };
            el.addEventListener("wheel", onWheel);
            return () => el.removeEventListener("wheel", onWheel);
        }
    }, []);

    return (
        <>
            <Modal
                open={Boolean(open)}
                submitLang={open === 1 ? "Add" : "Update"}
                title={open === 1 ? "Add Radio Info" : "Update Radio Info"}
                onSubmit={open === 1 ? confirmAdd : confirmUpdate}
                onClose={() => setOpen(0)}
                hideBackdrop
                maxWidth="sm"
                onAccept={() => setOpen(0)}
            >
                <TextField
                    fullWidth
                    required
                    variant="standard"
                    name="mugshot"
                    value={state.radio}
                    onChange={(e) => {
                        const value = e.target.value;
                        if (/^\d*\.?\d*$/.test(value)) {
                            setState({
                                ...state,
                                radio: value,
                            });
                        }
                    }}
                    label="Radio Frequency"
                    disabled={open === 2}
                    inputProps={{ maxLength: 5 }}
                />
                <TextField
                    fullWidth
                    required
                    variant="standard"
                    name="mugshot"
                    value={state.text}
                    onChange={(e) => setState({
                        ...state,
                        text: e.target.value,
                    })}
                    label="Info"
                    inputProps={{ maxLength: 32 }}
                />
            </Modal>
            <Grid item xs={18} className={classes.radioContainer}>
                <div className={classes.radioInner} ref={ref}>
                    {radios.map((r, k) => (
                        <RadioItem
                            key={r.id || k}
                            freq={r.radio}
                            text={`${r.radio} - ${r.text}`}
                            onClick={() => onUpdate(r.id, r.radio, r.text)}
                            onDelete={() => directDelete(r.id)}
                            onJoin={() => setRadio(r.radio, r.text)}
                        />
                    ))}
                    <RadioItem add icon="add" text="Add" onClick={onAdd} />
                </div>
            </Grid >
        </>
    );
};
