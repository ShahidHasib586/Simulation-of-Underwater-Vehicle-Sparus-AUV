# Underwater Robotics Modeling and Control

This repository contains the modeling, simulation, and control strategies for the Sparus Autonomous Underwater Vehicle (AUV). The project was developed as part of the **Underwater Robotics, Modeling, and Control** course led by Dr. Mathieu Richier.

---

## Key Features

### Dynamic Modeling
- Computation of the **real mass matrix** and **added mass matrix**, incorporating hydrodynamic effects.
- Derivation of **drag matrices** for different vehicle components, including:
  - Main body
  - Thrusters
  - Antenna
- Analysis of the matrix terms' contributions to vehicle dynamics.

### Simulations
- Experiments to validate the AUV's dynamic model, including:
  - **Surge motion** (forward movement)
  - **Heave motion** (vertical movement)
  - **Yaw motion** (turning)
- Visualization of:
  - Linear and angular velocities
  - Positions and accelerations
- Impact analysis of:
  - Mass matrix coefficients
  - Drag forces

### Control Strategies
- Exploration of coupling effects between translational and rotational motions.
- Development of insights for improving stability and precision using control mechanisms.

---

## Methodology

### Theoretical Foundations
- Application of hydrodynamic theories:
  - **Slender Body Theory**
  - **Lamb's k-factors**
- Identification and interpretation of significant terms in the matrices.

### Simulation Techniques
- Simulations run to evaluate the AUV's response under:
  - Adjusted thruster forces
  - Modified drag coefficients
  - Imposed accelerations and speeds
- Validation through comparisons with theoretical predictions and experimental data.

---

## Project Highlights

- Detailed breakdown of the Sparus AUV's dynamic properties.
- Simulations to test and refine control strategies.
- Simplification insights for efficient computations without significant accuracy loss.
- Contribution to designing robust underwater robotic systems for marine applications.

---

## Applications

This project provides a framework for the design and control of underwater robots used in tasks such as:
- Marine exploration
- Environmental monitoring
- Subsea intervention

---

## How to Use

1. Clone the repository:
   ```bash
   git clone <(https://github.com/ShahidHasib586/Simulation-of-Underwater-Vehicle-Sparus-AUV)>
   cd <Simulation-of-Underwater-Vehicle-Sparus-AUV>
   ```

2. Navigate through the files to explore the simulation models and their results.

3. Run the simulation code (if provided) to validate the Sparus AUV model under different scenarios.

---

## Authors
- **Shahid Ahamed Hasib**
- **Anastasiia Frolova**

### Instructor:
- **Dr. Mathieu Richier**

---

## Acknowledgments

This project was completed as part of the "Underwater Robotics, Modeling, and Control" course, focusing on advancing knowledge in underwater vehicle dynamics and control.
