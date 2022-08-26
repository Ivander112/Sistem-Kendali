j=1;
b=2;
k=3; %proportional
s = tf('s');
num=k/j;
den=[1 b/j k/j];
% num = 1;
% den = [1 4 1];
sys = tf(num,den);

figure(1)
step(sys);
xlim([0 10])

figure(2)
impulse(sys);
xlim([0 10])

figure(3)
step(sys/s); %ramp response
xlim([0 10]);
title("Ramp response");

% s1 = stepinfo(sys);
% disp(s1);
