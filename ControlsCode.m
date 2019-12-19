clear;clc;
numG=1; % Numerator of transfer function
denG=[0.5 1 0]; % Characteristic equation of transfer function
sys=tf(numG,denG); % Create transfer function
t=0:0.01:5; % Define range of time for simulation
figure(1);
[y1,t]=step(sys,t); % Step response of the system
plot(t,y1);hold on;
[y2,t]=impulse(sys,t); % Impulse response of the system
plot(t,y2)
grid on; xlabel('Time [s]'); ylabel('Response');
legend('Step Response', 'Impulse Response')
%%
figure(2);title('PID Approach')
sys2=zpk([],[0.5 1 0],1); % Create transfer function for system
[C_pi,info]=pidtune(sys2,'PID') % PID approach
T_pi=feedback(C_pi*sys2,1);
step(T_pi); %Step Response
hold on;
impulse(T_pi); %Impulse Response
legend('Step Response', 'Impulse Response','Location','northwest')