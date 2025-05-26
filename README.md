# 🚗 Trajectory Estimation from Accelerometer Data

This project reconstructs a vehicle's 2D position over time using time-series accelerometer data along the X and Y axes. It was developed as part of the Numerical Analysis (ENME602) course at the German University in Cairo (GUC).

## 📌 Objectives

- Compute velocity and position from raw accelerometer data using **manual trapezoidal integration**
- Apply **signal filtering** (low-pass and Kalman filters) to reduce sensor noise
- Fit the trajectory using **Newton’s divided difference interpolation**
- Estimate the time at which the vehicle reaches a specific distance using **root-finding methods**

## 🧰 Methods Used

- 🧮 Trapezoidal integration (manual implementation)
- 🧹 Low-pass filtering (exponential smoothing)
- 📈 Kalman filtering (1D scalar filter for each axis)
- 🔗 Newton's Divided Difference Interpolation (for trajectory fitting)
- 🧠 Root-finding: Bisection, Newton-Raphson, and Secant methods

## 📊 Features

- 2D trajectory reconstruction from noisy acceleration data
- Modular MATLAB code with commented functions
- Root-finding to detect when vehicle crosses a target distance (e.g., 10.5m)
- Easy to switch between filter types

## 📈 Sample Output

- Velocity and position plots over time (X and Y)
- 2D trajectory before and after filtering
- Time at which the vehicle reaches a distance of 10.5 meters

## 🚀 Getting Started

1. Open `main.m` in MATLAB
2. Run the script to generate filtered plots, trajectory, and root-finding results

## 📝 Course Context

This project was submitted as part of:
> **Numerical Analysis (ENME602)**  
> Mechatronics Engineering Department, GUC

## 📌 Authors

- **[Khalid Shehabeldin and Rimaz Abuelenin]** – Mechatronics Engineering Students, GUC  
- [https://www.linkedin.com/in/khalidshehabeldin/ https://www.linkedin.com/in/rimaz-abuelenin/]

