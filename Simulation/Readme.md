# Simulation Directory

This directory contains MATLAB scripts and Simulink models developed for simulating the dynamics and control of the Sparus Autonomous Underwater Vehicle (AUV).

---

## Contents

### 1. Dynamic Modeling
- Scripts and models for:
  - Computing the real and added mass matrices
  - Deriving drag matrices
  - Establishing transformation matrices for dynamic analysis

### 2. Simulations
- Experiments to validate the Sparus AUV's dynamics under various scenarios:
  - Surge motion (forward movement)
  - Heave motion (vertical movement)
  - Yaw motion (turning)
- Visualizations of:
  - Positions and altitudes
  - Linear and angular velocities
  - Linear and angular accelerations

### 3. Control and Parameter Studies
- Exploration of:
  - Impact of coefficients in the global mass matrix
  - Drag forces from individual components
  - Control commands and Jacobian matrices for precise vehicle manipulation

---

## File Overview

| File Name                      | Description                                                                 |
|--------------------------------|-----------------------------------------------------------------------------|
| `Sparus_3D_advance_model.mdl`  | Simulink model for advanced 3D dynamics simulation.                        |
| `Sparus_3D_advance_model.mdl.r2023a` | Version-specific Simulink model for MATLAB 2023a.                         |
| `Sparus_3D_advance_model.slxc` | Compiled simulation cache for the 3D model.                                |
| `transformation_matrix.m`      | Computes transformation matrices for coordinate changes.                   |
| `Parameters.m`                 | Defines parameters and constants used in simulations.                      |
| `RovModel.m`                   | Script for defining the ROV model dynamics.                                |
| `MeaSim.m`                     | Simulation script for mechanical and environmental analysis.               |
| `jacobienne.m`                 | Computes the Jacobian matrix for control purposes.                         |
| `Command.m`                    | Generates control commands for thrusters and actuators.                    |
| `S_.m`                         | Auxiliary script for supporting simulations.                               |
| `Plotting.m`                   | Visualization of simulation results, including plots of vehicle behavior.  |

---

## How to Run Simulations

1. Ensure MATLAB and Simulink are installed and properly configured.
2. Navigate to the `simulation` directory in MATLAB.
3. Run the desired script or open the Simulink model. For example:
   ```matlab
   run('Parameters.m')
   open('Sparus_3D_advance_model.mdl')
   ```
4. Start the simulation and observe the outputs.

---

## Results Interpretation

Each simulation provides:
- Detailed plots and data showcasing the vehicle's response under various conditions.
- Insights into hydrodynamic forces, mass matrix coefficients, and control strategies.

---

## Notes

- Ensure all required dependencies and auxiliary scripts are in the same directory.
- Adjust parameters in `Parameters.m` to explore different scenarios.
- Contact the authors for further assistance or additional details.

---

## Authors
- **Shahid Ahamed Hasib**
- **Anastasiia Frolova**

