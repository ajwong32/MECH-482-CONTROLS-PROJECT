## Welcome to the Strawberry Conveyor Belt Controller Project

You can use the [editor on GitHub](https://github.com/ajwong32/MECH-482-CONTROLS-PROJECT/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

Problem Description: An agricultural producer needs an automated belt speed controller for one of their conveyor lines. This will provide a consistent output rate without the need for constant obvservation and adjustment. 

Solution: A Proportional-Integral-Derivative (PID) loop will be used to meet a desired output of plants from a conveyor belt system. The output of plants on the operating line will be determined by varying the speed of the conveyor belt. The project will involve creating a mathematical model representing the PID loop. The loop will adjust the conveyor belt speeds to output the desired number of plants per hour. 


### MatLAB Code

The following code comprises the closed feedback loop needed to operate the converyor belt.

```markdown
Title for our code (change this)

# Initial Parameters for Simulation
'clear;clc;
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
legend('Step Response', 'Impulse Response')'

## Plot, PID, and Response
'figure(2);title('PID Approach')
sys2=zpk([],[0.5 1 0],1); % Create transfer function for system
[C_pi,info]=pidtune(sys2,'PID') % PID approach
T_pi=feedback(C_pi*sys2,1);
step(T_pi); %Step Response
hold on;
impulse(T_pi); %Impulse Response
legend('Step Response', 'Impulse Response','Location','northwest')'
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/ajwong32/MECH-482-CONTROLS-PROJECT/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
