%bersih bersih
clearvars
clc
close all

%membuat persamaan plant

T = 16;
s = tf('s');
num=[1];
den=[T T/16 1];
plant = tf(num,den);

kp = 1;
ki = [1 3 5 7 9];

control = tf(zeros(1,1,5));
sys=tf(zeros(1,1,5));
complete=tf(zeros(1,1,5));
% ingfo=

for x = 1:5
    control(:,:,x) = (kp*s + ki(x))/s;
    sys(:,:,x) = plant*control(:,:,x);
    complete(:,:,x) = feedback(sys(:,:,x),1);
end
 
for x = 1:5
    figure(1)
    subplot(3,2,x)
%     hold on

    step(complete(:,:,x));
    title(['Step Response KI: ',num2str(ki(x))])
%     hold off
    
    %xlim([290 310]);
    tf_info(x)= stepinfo(complete(:,:,x));
    [y,t]=step(complete(:,:,x));
    sserror(x)=(1-y(end));
end

for x = 1:5
    figure(2)
    subplot(3,2,x)
    impulse(complete(:,:,x));
    title(['Impulse Response KI: ',num2str(ki(x))])
    %xlim([290 310]);
end


for x = 1:5
    figure(3)
    subplot(3,2,x)
    step(complete(:,:,x)/s);
    title(['Ramp Response KI: ',num2str(ki(x))])
    %xlim([290 310]);
end
