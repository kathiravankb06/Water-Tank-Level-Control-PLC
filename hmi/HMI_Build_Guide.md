# HMI Build Guide (CODESYS Visualization)

1. Right-click **Application → Add Object → Visualization**, name it `Tank_HMI`.
2. Draw a **Rectangle** (tank outline) and a **Bar Display** inside it. Value = `Tank_Sim.Level`, Min 0, Max 100.
3. Add a rectangle for the readout: Text `%2.1f %%`, Text variable `Tank_Sim.Level`.
4. Add 4 **Lamps** bound to `PLC_PRG.Pump`, `PLC_PRG.Alarm`, `PLC_PRG.Low_Level`, `PLC_PRG.High_Level`, with labels.
5. Add buttons (OnMouseDown → Configure):
   - STOP: **Tap variable** `PLC_PRG.Stop_PB`
   - RESET: **Tap variable** `PLC_PRG.Reset_PB`
   - AUTO ON/OFF: **Toggle variable** `PLC_PRG.Auto_Mode`
   - SOURCE EMPTY (test): **Toggle variable** `PLC_PRG.Source_Empty`
6. In **Visualization Manager → WebVisu**, set Start visualization to `Tank_HMI`.
7. Build, Login, Start, then open the `Tank_HMI` tab.

Browser view: `http://localhost:8080/webvisu.htm` (requires the CODESYS Control Win runtime, not Simulation).
