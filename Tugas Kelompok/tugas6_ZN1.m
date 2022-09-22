clc; clearvars; close all;
% Get the tangent line
J = 0.01;
b = 0.1;
K = 0.01;
R = 1;
L = 0.5;
s = tf('s');

num_motor = [K];
den_motor = [J*L J*R+b*L R*b+K*K];
motor = tf(num_motor,den_motor);

% =========== mencari tangenline dan menetukan nilai T dan Y ================
[y,t] = step(motor);
h = mean(diff(t));
dy = gradient(y, h);                                            % Numerical Derivative
[~,idx] = max(dy);                                              % Index Of Maximum
b = [t([idx-1,idx+1]) ones(2,1)] \ y([idx-1,idx+1]);            % Regression Line Around Maximum Derivative
tv = [-b(2)/b(1); (1-b(2))/b(1)];                               % Independent Variable Range For Tangent Line Plot
f = [tv ones(2,1)] * b;                                         % Calculate Tangent Line

L = tv(1);
T = tv(2);

figure(1)
plot(t, y)
hold on
plot(tv, f, '-r')                                               % Tangent Line
plot(t(idx), y(idx), '.r')
title('Mencari tangent line plant ')% Maximum Vertical
hold off
grid

%menentukan control PID sistem
x=0;
while(x~=1 && x~=2 && x~=3)
    x = input("1.P\n2.PI\n3.PID\nMasukan sistem control yang ingin dibuat(1-3): ");
end
if x == 1
    kp = T/L;
    control= tf([0 kp 0],[1 0]);
elseif x == 2
    kp = 0.9*T/L;
    Ti= L/0.3;
    ki = kp/Ti;
    control= tf([0 kp ki],[1 0]);
else
    kp = 1.2*T/L;
    Ti= 2*L;
    ki = kp/Ti;
    Td = 0.5*L;
    kd = kp*Td;
    control= tf([kd kp ki],[1 0]);
end

sys = motor*control;
complete= feedback(sys,1);

%Step response dan impulse response
figure(2)
hold on
step(complete);
impulse(complete);
title('Step Response dan Impulse Reponse Sistem ')
legend('Step', 'Impulse')
hold off
% Mencari karakteristik gelombang 
tf_info= stepinfo(complete);

% mencari steady state error
[y,t]=step(complete);
sserror=(1-y(end));

% Ramp Repsonse 
figure(3)
step(complete/s);
title('Ramp Response Sistem ')
% xlim([0 10]);

