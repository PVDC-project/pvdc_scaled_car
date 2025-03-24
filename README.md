# pvdc_scaled_car

## Overview
This repository contains datasets obtained from Linear Time-Varying (LTV), Nonlinear Model Predictive Control (NMPC), and Koopman-based Model Predictive Control (KMPC) experiments on a scaled car platform.

## Naming Convention
The dataset filenames follow a structured naming convention to indicate the specific experiment parameters:

```
N_<prediction_horizon>_V_<velocity>_<maneuver>_<controller>
```

### Example Filenames:
- `N_5_V_1_DLC_KMPC`
  - Prediction horizon: **N = 5**
  - Velocity: **v_x = 1 m/s**
  - Maneuver: **Double Lane Change (DLC)**
  - Controller: **KMPC**

- `N_5_V_1_DLC_NMPC`
  - Prediction horizon: **N = 5**
  - Velocity: **v_x = 1 m/s**
  - Maneuver: **Double Lane Change (DLC)**
  - Controller: **NMPC**

- `N_5_V_1_DLC_LTV`
  - Prediction horizon: **N = 5**
  - Velocity: **v_x = 1 m/s**
  - Maneuver: **Double Lane Change (DLC)**
  - Controller: **LTV**

### Additional Naming Extensions:
- `_SIM`: Indicates **simulation results**.
- `_SIM_DELAY`: Indicates **simulation results with delay effects**.

## Publication
These datasets are used in the following publication:
[Experimental Validation of Model Predictive Control on a Scaled Car Platform](https://www.sciencedirect.com/science/article/pii/S0967066125000358)

## License
Please refer to the repository license for usage and distribution terms.

## Contact
For any inquiries, please reach out to the authors of the associated publication.
