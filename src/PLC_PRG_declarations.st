PROGRAM PLC_PRG
VAR_INPUT
    Low_Level  : BOOL;
    High_Level : BOOL;
END_VAR
VAR
    Source_Empty  : BOOL;
    Auto_Mode     : BOOL := TRUE;
    Stop_PB       : BOOL;
    Reset_PB      : BOOL;
    Pump          : BOOL;
    Alarm         : BOOL;
    Fault_Latch   : BOOL;
    StartDelay    : TON;
    Start_OK      : BOOL;
END_VAR
// The ladder logic (4 rungs) is described in README.md.
