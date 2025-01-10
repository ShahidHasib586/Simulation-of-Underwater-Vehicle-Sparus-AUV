%% here you can implement the code in order to have some figures ...
%%

% Time vector calculation
t = (1:size(PosE, 1)) * 0.01;
t = t(:);

% Figure 1: Position
figure(1) 
% Position plot: Surge, Sway, Heave
subplot(2, 1, 1)
plot(t, PosE_S(:, 1)) % Surge
hold on
plot(t, PosE_S(:, 2)) % Sway
plot(t, PosE_S(:, 3)) % Heave
hold off
grid on
legend('Surge', 'Sway', 'Heave')
title('Position')
xlabel('Time [s]')
ylabel('Pos [m]')

% Attitude plot: Roll, Pitch, Yaw
subplot(2, 1, 2)
plot(t, rad2deg(PosE_S(:, 4))) % Roll
hold on
plot(t, rad2deg(PosE_S(:, 5))) % Pitch
plot(t, rad2deg(PosE_S(:, 6))) % Yaw
hold off
grid on
legend('Roll', 'Pitch', 'Yaw')
title('Attitude')
xlabel('Time [s]')
ylabel('Angle [deg]')

% Figure 2: Velocities
figure(2) 
% Linear velocities plot: Surge, Sway, Heave
subplot(2, 1, 1)
plot(t, VitB_S(:, 1)) % Surge
hold on
plot(t, VitB_S(:, 2)) % Sway
plot(t, VitB_S(:, 3)) % Heave
hold off
grid on
legend('Surge', 'Sway', 'Heave')
title('Linear Velocities')
xlabel('Time [s]')
ylabel('V [m/s]')

% Angular velocities plot: Roll, Pitch, Yaw
subplot(2, 1, 2)
plot(t, rad2deg(VitB_S(:, 4))) % Roll
hold on
plot(t, rad2deg(VitB_S(:, 5))) % Pitch
plot(t, rad2deg(VitB_S(:, 6))) % Yaw
hold off
grid on
legend('Roll', 'Pitch', 'Yaw')
title('Angular Velocities')
xlabel('Time [s]')
ylabel('omega [deg/s]')

% Figure 3: Accelerations
figure(3) 
% Linear accelerations plot: Surge, Sway, Heave
subplot(2, 1, 1)
plot(t, AccB_S(:, 1)) % Surge
hold on
plot(t, AccB_S(:, 2)) % Sway
plot(t, AccB_S(:, 3)) % Heave
hold off
grid on
legend('Surge', 'Sway', 'Heave')
title('Linear Accelerations')
xlabel('Time [s]')
ylabel('a [m/s^2]')

% Angular accelerations plot: Roll, Pitch, Yaw
subplot(2, 1, 2)
plot(t, rad2deg(AccB_S(:, 4))) % Roll
hold on
plot(t, rad2deg(AccB_S(:, 5))) % Pitch
plot(t, rad2deg(AccB_S(:, 6))) % Yaw
hold off
grid on
legend('Roll', 'Pitch', 'Yaw')
title('Angular Accelerations')
xlabel('Time [s]')
ylabel('Alpha [deg/s^2]')

figure(4)
plot3(PosE_S(:, 1), PosE_S(:, 2), PosE_S(:, 3))
xlabel('Pos x[m]')
ylabel('Pos y[m]')
zlabel('Pos z[m]')
