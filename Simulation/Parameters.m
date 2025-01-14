function Para=Parameters()
global Para

%% Initial Speed and position in Earth-fixed frame

Para.ICPos = [0 0 2 0 0 0];
Para.ICSpeed = [0 0 0 0 0 0] ;

%% General parameters
Para.rho_water = 1000 ;                     % Masse volumique de l'eau (kg/m^3)
Para.R = 0.115 ;                             % Sparus Radius (m)
Para.L = 1.6;  	                            % Sparus length (m)
Para.m = 52 ; 	                            % Sparus mass (kg)
Para.mb = 52.1;                           	% Sparus buoyancy mass  (kg) 
Para.g = 9.81 ;                             % Earth Gravity (m*s^(-2))
Para.P = Para.m * Para.g;	                % Sparus weight (N)
Para.B = Para.mb * Para.g;	                % Buoyancy (N)

%% Center of gravity and Buoyancy position in body-fied frame

Para.xg = 0 ;    %x-positon of Center of gravity
Para.yg = 0 ;    %y-positon of Center of gravity
Para.zg = 0 ;    %z-positon of Center of gravity

Para.rg = [Para.xg Para.yg Para.zg]' ;


Para.xb = 0      ;    % x-positon of Center of Buoyancy
Para.yb = 0      ;    % y-positon of Center of Buoyancy
Para.zb = -0.02  ;    % z-positon of Center of Buoyancy

Para.rb = [Para.xb Para.yb Para.zb]' ;

%% Body positions

% Main Body S0;
Para.S0.r=[0,0,0]'; % Position (m)
% Thruster 2 (S1);
Para.S1.r=[-0.59, 0.17, 0]'; % Position (m)
% Thruster 3 (S2);
Para.S2.r=[-0.59 -0.17 0]'; % Position (m)
% Antenna (S3);
Para.S3.r=[-0.3830, 0, -0.2407]'; % Position (m)
% USBL (S4);
Para.S4.r=[0.44, 0, -0.14]'; % Position (m)
% DVL (S5);
Para.S5.r=[-0.4145, 0, 0.11]'; % Position (m)
%% Body Mass matrices

% Sparus;
Para.Mb = ...
    [52     0     0     0  -0.1     0;...
      0    52     0   0.1     0  -1.3;...
      0     0    52     0   1.3     0;...
      0   0.1     0   0.5     0     0;...
   -0.1     0   1.3     0   9.4     0;...
      0  -1.3     0     0     0   9.5];

%% Body added Mass matrices
% All matrices are moved to the CO of the AUV
% Main Body S0;
Para.S0.Ma = ... 
   [1.6038         0         0         0         0         0;
         0   57.3280         0         0         0   10.9245;
         0         0   57.3280         0   -10.9245        0;
         0         0         0         0         0         0;
         0         0  -10.9245         0   15.0487         0;
         0   10.9245         0         0         0   15.0487];

% Thruster left (S1);
Para.S1.Ma = ...
      [0.2         0         0         0         0    0
         0         0         0         0         0    0
         0         0      2.63     -0.45      1.55    0
         0         0     -0.45         0     -0.26    0
         0         0      1.55     -0.26      0.96    0
         0         0         0         0         0    0];

% Thruster right (S2);
Para.S2.Ma = ...
      [0.2         0         0         0         0    0
         0         0         0         0         0    0
         0         0      2.63      0.45      1.55    0
         0         0      0.45         0      0.26    0
         0         0      1.55      0.26      0.96    0
         0         0         0         0         0    0];

% Antenna (S3);
Para.S3.Ma = ...
        [0         0         0         0         0         0;
         0      1.19         0      0.27         0       -52;
         0         0         0         0         0         0;
         0      0.27         0         0         0     -0.12;
         0         0         0         0         0         0;
         0     -0.52         0     -0.12         0     0.25];

%% Generalized mass matrix

Para.Ma = Para.S0.Ma + Para.S1.Ma + Para.S2.Ma + Para.S3.Ma ; 

Para.Mg = Para.Ma + Para.Mb;


%% Generalized coriolis matrix

% Computed in RovModel.m

%% Friction matrices


Para.S0.Kq =...    %Quadratic friction matrix
   [2.1285         0         0         0         0         0;
         0    54.528         0         0         0         0;
         0         0    54.528         0         0         0;
         0         0         0         0         0         0;
         0         0         0         0    6.9796         0;
         0         0         0         0         0    6.9796];

% Thruster 2 (S1);

%Quadratic friction matrix

Para.S1.Kq =...    
   [5.0895         0         0         0         0         0;
         0         0         0         0         0         0;
         0         0     36.075        0         0         0;
         0         0         0         0         0         0;
         0         0         0         0   0.00195         0;
         0         0         0         0         0         0];

% Thruster 3 (S2);
Para.S2.Kq =...    
   [5.0895         0         0         0         0         0;
         0         0         0         0         0         0;
         0         0     36.075        0         0         0;
         0         0         0         0         0         0;
         0         0         0         0   0.00195         0;
         0         0         0         0         0         0];

% Antenna (S3);
Para.S3.Kq =...    %Quadratic friction matrix
    [4.266         0         0         0         0         0;
         0    11.421         0         0         0         0;
         0         0         0         0         0         0;
         0         0         0         0         0         0;
         0         0         0         0   0.002237        0;
         0         0         0         0         0   0.00599];


%% Thruster modelling

%Thruster positions in body-fixed frame

Para.d1x = 0        ; 
Para.d1y = 0        ;
Para.d1z = 0.08     ;
Para.d2x = -0.59    ; 
Para.d2y = 0.17     ;
Para.d2z = 0        ;
Para.d3x = -0.59    ;
Para.d3y = -0.17    ;
Para.d3z = 0        ;


Para.rt1 = [Para.d1x, Para.d1y, Para.d1z]' ;
Para.rt2 = [Para.d2x, Para.d2y, Para.d2z]' ;
Para.rt3 = [Para.d3x, Para.d3y, Para.d3z]' ;


Para.rt = [Para.rt1 Para.rt2 Para.rt3] ;

%Thruster gains

Para.kt1 = 28.5    ;
Para.kt2 = 30    ;
Para.kt3 = 30    ;


%Thruster gain vectors

Para.Kt=[Para.kt1;Para.kt2;Para.kt3];

%Thruster time constants

Para.Tau1 = 0.4 ;
Para.Tau2 = 0.8 ;
Para.Tau3 = 0.8 ;


%Thruster time constant vectors

Para.Tau = [Para.Tau1;Para.Tau2;Para.Tau3] ;

% Mapping of thruster

Para.Eb_F = [0 1 1; 0 0 0; 1 0 0];

Para.Eb_M = [0 0 0; 0 0 0; 0 -Para.d2y -Para.d3y];

Para.Eb = [ Para.Eb_F ; Para.Eb_M ] ;

% Inverse Mapping of thruster
Para.Ebinv = pinv(Para.Eb) ;

end





 
           

