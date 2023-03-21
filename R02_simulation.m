clc;
clear;
close all;

addpath F01_generated_function\
addpath F02_subfunction\
load param.mat;

%% Set Up
original_P = [0; 0];
wpts_1 = [0 90*pi/180 0 180*pi/180];
wpts_2 = [0 -45*pi/180 90*pi/180 -90*pi/180];
wpts_3 = [0 -45*pi/180 -90*pi/180 90*pi/180];
tpts1 = [0 1 2 3];
tpts2 = [0 1 2 3];
tpts3 = [0 1 2 3];

tvec = 0:0.02:3;


%% Trajectory Generation
[q1, qd1, qdd1, pp1] = cubicpolytraj(wpts_1, tpts1, tvec);
[q2, qd2, qdd2, pp2] = cubicpolytraj(wpts_2, tpts2, tvec);
[q3, qd3, qdd3, pp3] = cubicpolytraj(wpts_3, tpts3, tvec);

theta1 = q1;
theta2 = q2;
theta3 = q3;

%% Simulation
figure(1);
pause(10)
for i = 1:length(theta1)
    M1 = f1(theta1(1, i));
    M2 = f2(theta2(1, i));
    M3 = f3(theta3(1, i));

    P1 = M1*[0; 0; 0; 1];
    P2 = M1*M2*[0; 0; 0; 1];
    P3 = M1*M2*M3*[0; 0; 0; 1];

    plot_arm(original_P, P1, P2, P3, L1, L2, L3);
end