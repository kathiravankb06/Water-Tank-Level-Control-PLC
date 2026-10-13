(* Structured Text equivalent of the 4-rung ladder in PLC_PRG.
   Reference only; the project itself uses Ladder Logic.
   Declarations are the same as in PLC_PRG_declarations.st *)

// Rung 1: start delay
StartDelay(IN := Low_Level AND Auto_Mode, PT := T#3S);
Start_OK := StartDelay.Q;

// Rung 2: latched dry-run fault
Fault_Latch := (Source_Empty OR Fault_Latch) AND NOT Reset_PB;

// Rung 3: pump control with seal-in
Pump := (Start_OK OR Pump)
        AND NOT High_Level
        AND NOT Source_Empty
        AND NOT Stop_PB
        AND NOT Fault_Latch
        AND Auto_Mode;

// Rung 4: alarm
Alarm := Fault_Latch;
