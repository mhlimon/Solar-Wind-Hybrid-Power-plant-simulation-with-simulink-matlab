clc;
clear;
close all;
%'SunPower SPR-305-WHT';

nCells= 96;              % Number of cells in series
Pmp= 305.2;              % Maximum power (W)
Vmp= 54.70;              % Maximum power voltage (V) 
Imp= 5.58;               % Maximum power current (A)
Voc= 64.20;              % Open circuit voltage (V)
Isc= 5.96;               % Short circuit current (A)
TempC_Pmp= -1.154e+000;  % Maximum power temp. coefficient (W/deg.C)
TempC_Vmp= -1.860e-001;  % Maximum power voltage temp. coefficient (V/deg.C)
TempC_Imp= -2.120e-003;  % Maximum power current temp. coefficient (A/deg.C
TempC_Voc= -1.770e-001;  % Open circuit voltage temp. coefficient (V/deg.C)
TempC_Isc= 3.516e-003;   % Short circuit current temp. coefficient (A/deg.C)
Rs= 0.037998;            % Series resistance of PV model (ohms)
Rp= 993.51;              % Parallel resistance of PV model (ohms)
Isat= 1.1753e-08;        % Diode saturation current of PV model (A)
Iph= 5.9602;             % Light-generated photo-current  of PV model (A)
Qd= 1.3;                 % Diode quality factor of PV model
k= 1.3806e-23; % Boltzman constant (J.K^-1)
q=1.6022e-19;  % electron charge  (C)
T=273+25;
Npar =5
Nser=1
Ts_Power = 1e-6;
Ts_Control = 100e-6;
Ts = Ts_Power;


Vm=Vmp;
Im=Imp;

VT=k*T/q*nCells*Qd;

Iph_array=Iph*Npar;
Isat_array=Isat*Npar;
VT_array=VT*Nser;
Rs_array=Rs*Nser/Npar;
Rp_array=Rp*Nser/Npar;