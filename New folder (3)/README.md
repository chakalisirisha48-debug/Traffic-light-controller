# Traffic Light Controller using Verilog

## Overview

This project implements a simple Traffic Light Controller using Verilog HDL. The controller is designed as a Finite State Machine (FSM) that cycles through Red, Green, and Yellow traffic lights with predefined timing intervals.

## Features

- Finite State Machine (FSM) implementation
- Synchronous design using clock signal
- Active-high reset
- Automatic state transitions
- Easy to simulate on FPGA simulators

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| rst | Active High Reset |

## Outputs

| Signal | Description |
|---------|-------------|
| light[2:0] | Traffic Light Output |

### Light Encoding

| Binary | Light |
|--------|-------|
|100|Red|
|010|Yellow|
|001|Green|

## State Diagram

```
      +---------+
      |   RED   |
      +---------+
           |
           v
      +---------+
      | GREEN   |
      +---------+
           |
           v
      +---------+
      | YELLOW  |
      +---------+
           |
           +---------
                |
                v
               RED
```

## Project Files

```
traffic_light_controller.v
traffic_light_controller_tb.v
README.md
simulation.png
```

## Simulation

The controller continuously cycles through:

```
RED
 ↓
GREEN
 ↓
YELLOW
 ↓
RED
```

Expected output sequence:

```
100
001
010
100
001
010
...
```

## Tools Used

- Verilog HDL
- ModelSim
- Vivado Simulator
- EDA Playground

## Applications

- Smart Traffic Systems
- FPGA Learning Projects
- Digital Logic Design
- Embedded Controllers
- Transportation Automation

## Future Improvements

- Two-road intersection controller
- Pedestrian crossing button
- Emergency vehicle priority
- Countdown timer display
- Sensor-based adaptive timing

## Author

Your Name