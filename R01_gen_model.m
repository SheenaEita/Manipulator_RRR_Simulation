clc;
clear;
close all;

syms theta1 theta2 theta3
L1 = 0.8; %length of arm [m]
L2 = 0.6; %length of arm [m]
L3 = 0.3; %length of arm [m]

save('F01_generated_function\param.mat',"L3","L2","L1");

T01 = [cos(theta1), -sin(theta1), 0, L1*cos(theta1);
    sin(theta1), cos(theta1), 0, L1*sin(theta1);
    0, 0, 1, 0;
    0, 0, 0, 1];

T02 = [cos(theta2), -sin(theta2), 0, L2*cos(theta2);
    sin(theta2), cos(theta2), 0, L2*sin(theta2);
    0, 0, 1, 0;
    0, 0, 0, 1];

T03 = [cos(theta3), -sin(theta3), 0, L3*cos(theta3);
    sin(theta3), cos(theta3), 0, L3*sin(theta3);
    0, 0, 1, 0;
    0, 0, 0, 1];

matlabFunction(simplify(T01), 'file', 'F01_generated_function\f1', 'vars', {theta1});
matlabFunction(simplify(T02), 'file', 'F01_generated_function\f2', 'vars', {theta2});
matlabFunction(simplify(T03), 'file', 'F01_generated_function\f3', 'vars', {theta3});

disp('Done.');