(* Tank simulator: imitates the tank so the project runs without hardware.
   Add Tank_Sim to MainTask after PLC_PRG.
   Remove it on real hardware and map Low_Level / High_Level to real inputs. *)

// ---- Declaration (top pane) ----
PROGRAM Tank_Sim
VAR
    Level : REAL := 10;
END_VAR

// ---- Code (bottom pane) ----
IF PLC_PRG.Pump THEN Level := Level + 0.05; END_IF
IF Level > 0 THEN Level := Level - 0.01; END_IF

PLC_PRG.Low_Level  := Level < 20;
PLC_PRG.High_Level := Level > 90;
