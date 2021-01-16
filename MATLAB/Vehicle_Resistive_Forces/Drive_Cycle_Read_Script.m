% ABB FORMULA EV Drive Cycle

data = xlsread('Data.xlsx');
% storing time data i.e, from rows 1-468 and column 1
data_time = data(1:end,1);

% This will give the maximum time of the simulation
maxtime = max(data_time);

% storing velocity data i.e, from rows 1-468 and column 2
data_velocity = data(1:end,2);

Drive = timeseries(data_velocity,data_time);
% Use from workspace block and give it input as Drive and maximum
% simulation time as maxtime


% For cross checking the drive cycle plot
figure(1);
plot(data_time,data_velocity);
xlabel('Time (sec)');
ylabel('Velocity (m/s)');
title('Drive Cycle Plot');

% Reading Grade Resistance Data
gradedata = xlsread('Grade_Data.xlsx');

% Reading time from Grade_Data file
gradetime = gradedata(1:end,1);

% Reading angle data from Grade_Data file
theta = gradedata(1:end,2);

% Use from workspace block and give it input as Grade 
Grade = timeseries(theta,gradetime);

% For cross checking the angle data plot
figure(2);
plot(gradetime,theta);
xlabel('Time (sec)');
ylabel('Grade Angle (degrees)');
title('Grade Angle Plot');


% Coefficient of Rolling resistance
Crr = 0.015;

% Gross Vehicle Mass
GVM = 900; % kg

% Gravitational constant
g = 9.81; % m/s^2

% Gross Vehicle Weight
GVW = GVM*g;

% Frontal Area 
A = 1.8585; % m^2

% Air Density
rho = 1.225; % kg/m^3

% Coefficient of Drag
Cd = 0.9;

% Radius of Wheel
Rw = 0.2286; % m
