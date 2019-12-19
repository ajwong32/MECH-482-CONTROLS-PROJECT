## Welcome to the Strawberry Conveyor Belt Controller Project

Problem Description: An agricultural producer needs an automated belt speed controller for one of their conveyor lines. This will provide a consistent output rate without the need for constant obvservation and adjustment. 

Solution: A Proportional-Integral-Derivative (PID) loop will be used to meet a desired output of plants from a conveyor belt system. The output of plants on the operating line will be determined by varying the speed of the conveyor belt. The project will involve creating a mathematical model representing the PID loop. The loop will adjust the conveyor belt speeds to output the desired number of plants per hour. 


### MatLAB Code

The following code comprises the closed feedback loop needed to operate the converyor belt.

```markdown
Note: Must be run with MatLAB symbolic toolbox installed.

# Initial Parameters for Simulation
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

## Plot, PID, and Response
figure(2);title('PID Approach')
sys2=zpk([],[0.5 1 0],1); % Create transfer function for system
[C_pi,info]=pidtune(sys2,'PID') % PID approach
T_pi=feedback(C_pi*sys2,1);
step(T_pi); %Step Response
hold on;
impulse(T_pi); %Impulse Response
legend('Step Response', 'Impulse Response','Location','Northwest')

```

### Team and Plan:
Our team consists of Shayne Baynes, Michael Chalmers, Camille King, Edward Vohnout, and Alex Wong. The team listed above modeled the PID loop mathematically in MATLAB. The conveyor belt speed will need to be adjusted to ensure that the quantity of plants is accurate to the desired number. Below is a Gantt chart describing weekly deliverables and the roles that will be assigned to each task. Due to the project overlapping with Camille’s capstone project, she will be the project lead based on her knowledge and background. Edward lead the developement of the mathematical model necessary to implement into MATLAB. Alex and Michael lead the site development.

### Support or Contact

Having trouble with Pages? Please email us at (awong35@mail.csuchico.edu) or (mchalmers1@mail.csuchico.edu) and we’ll help you sort it out.
