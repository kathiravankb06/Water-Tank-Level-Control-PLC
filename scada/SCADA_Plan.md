# SCADA Plan (OPC UA)

**Status: planned, not yet implemented.**

## Architecture
PLC (CODESYS Control Win, OPC UA server, port 4840) → OPC UA client (SCADA).

## Setup
1. Add **Symbol Configuration** to the Application and tick *Support OPC UA features*.
2. Publish the tags below, build, download and start.
3. Test with a free OPC UA client (UaExpert) at `opc.tcp://localhost:4840`.
4. Connect a SCADA package (Ignition, ScadaBR or Node-RED dashboard).

## Tag map

| Variable | Type | Access | Use |
|---|---|---|---|
| `PLC_PRG.Low_Level` | BOOL | Read | Lamp |
| `PLC_PRG.High_Level` | BOOL | Read | Lamp, alarm |
| `PLC_PRG.Source_Empty` | BOOL | Read/Write | Test toggle |
| `PLC_PRG.Auto_Mode` | BOOL | Read/Write | Switch |
| `PLC_PRG.Stop_PB` | BOOL | Read/Write | Button |
| `PLC_PRG.Reset_PB` | BOOL | Read/Write | Button |
| `PLC_PRG.Pump` | BOOL | Read | Lamp, history |
| `PLC_PRG.Alarm` | BOOL | Read | Lamp, alarm |
| `PLC_PRG.Fault_Latch` | BOOL | Read | Diagnostics |
| `Tank_Sim.Level` | REAL | Read | Level bar, trend |

## Screens and features
Tank overview with level bar and lamps, control buttons, alarm table (`Alarm` = dry-run fault, `High_Level` = medium), and a trend of `Level` and `Pump`.
