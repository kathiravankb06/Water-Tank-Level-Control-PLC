# Test Cases

Set values with *Prepare value* (double-click) and **Ctrl+F7**. Fill the Result column after testing.

| # | Test | Action | Expected | Result |
|---|---|---|---|---|
| 1 | Auto fill | `Low_Level` = TRUE, wait 3 s | `Pump` = TRUE | Pending |
| 2 | Seal-in | `Low_Level` = FALSE | `Pump` stays TRUE | Pending |
| 3 | High-level stop | `High_Level` = TRUE | `Pump` = FALSE | Pending |
| 4 | Restart | `High_Level` = FALSE, `Low_Level` = TRUE for 3 s | `Pump` = TRUE again | Pending |
| 5 | Dry-run | `Source_Empty` = TRUE | `Pump` = FALSE, `Alarm` = TRUE | Pending |
| 6 | Reset | `Source_Empty` = FALSE, then `Reset_PB` = TRUE | `Alarm` = FALSE | Pending |
| 7 | Stop | `Stop_PB` = TRUE | `Pump` = FALSE | Pending |

Note: `Fault_Latch` holds itself, so `Reset_PB` only clears it when `Source_Empty` is already FALSE.
With `Tank_Sim` running, `Low_Level` and `High_Level` are overwritten every scan, so use the simulator's behaviour for tests 1 to 4, or temporarily remove `Tank_Sim` from MainTask to force them by hand.
