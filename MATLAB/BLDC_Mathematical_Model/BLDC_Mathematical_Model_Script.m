% Mathematical modeling and Simulation of BLDC
% BLDC MATHEMATICAL MODEL AND CONTROL

% Motor Params:
R = 1.43; %Stator winding resistance (Ohm)
L = 9.4e-3; %Stator winding inductance (H)
Ke = 1; %Voltage (Back-emf) constant (Volt/rad/s)
Kt = 1; %Torque constant (N.m/A)
B = 2e-3; %Rotor frictional resistance (N.m/rad/s)
J = 5.5e-3; %Rotor inertia (kg.m^2)
P = 4; %Motor no. of poles
trap = 0.2; %Back emf trapezoidal saturation
phi_m = 0.2158; %Max flux linkagefiz

