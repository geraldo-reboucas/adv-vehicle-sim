% ADVISOR Data file:  FC_PRIUS_JPN.m
%
% Data source: Fuel consumption (g/s) and emissions from : 
% Feng An's model (ANL) using real test data for calibrating it. 
 
%
% Data confidence level:    
%
% Notes:
% This file (FC_PRIUS_JPN.m) contains fuel use data which has been
% generated by a computer model developed by Feng An but calibrated using
% test data from dyno.
% The model is simulating a
% 1.5L Prius_jpn (Atkinson cycle)engine
% Maximum Power 43kW @4000rpm 
% Peak Torque  75 lb-ft @ 4000 rpm.
%
%
% Created on:  6/15/99
% By:  SS, NREL
%
% Revision history at end of file.
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILE ID INFO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fc_description='Prius_jpn 1.5L (43kW) from FA model and ANL test data'; 
% one line descriptor identifying the engine
fc_version=2003; % version of ADVISOR for which the file was generated
fc_proprietary=0; % 0=> non-proprietary, 1=> proprietary, do not distribute
fc_validation=1; % 1=> no validation, 1=> data agrees with source data, 
% 2=> data matches source data and data collection methods have been verified
fc_fuel_type='Gasoline';
fc_disp=1.5;  % (L), engine displacement
fc_emis=1; % boolean 0=no emis data; 1=emis data
fc_cold=0;      % boolean 0=no cold data; 1=cold data exists
disp(['Data loaded: FC_PRIUS_JPN - ',fc_description]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SPEED & TORQUE RANGES over which data is defined
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (rad/s), speed range of the engine
fc_map_spd=[1000 1250 1500 1750 2000 2250 2500 2750 3000 3250 3500 4000]*2*pi/60; 

lbft2Nm=1.356; %conversion from lbft to Nm
% (N*m), torque range of the engine
fc_map_trq=[6.3 12.5 18.8 25.1 31.3 37.6 43.9 50.1 56.4 62.7 68.9 75.2]*lbft2Nm;

clear lbft2Nm

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUEL USE AND EMISSIONS MAPS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Fuel_idle (g/s)=  0.5693 
%CO2_idle (g/s)=  1.806 
%CO_idle (g/s)=  0.0068 
%HC_idle (g/s)=  0.0073 
%NO_idle (g/s)=  0.0000 

% (g/s), fuel use map indexed vertically by fc_map_spd and 
% horizontally by fc_map_trq
% fuel use from Feng An's model calibrated with actual data for Prius_jpn (Atkinson cycle) engine
fc_fuel_map = [
 0.1513  0.1984  0.2455  0.2925  0.3396  0.3867  0.4338  0.4808  0.5279  0.5279  0.5279  0.5279 
 0.1834  0.2423  0.3011  0.3599  0.4188  0.4776  0.5365  0.5953  0.6541  0.6689  0.6689  0.6689 
 0.2145  0.2851  0.3557  0.4263  0.4969  0.5675  0.6381  0.7087  0.7793  0.8146  0.8146  0.8146 
 0.2451  0.3274  0.4098  0.4922  0.5746  0.6570  0.7393  0.8217  0.9041  0.9659  0.9659  0.9659 
 0.2759  0.3700  0.4642  0.5583  0.6525  0.7466  0.8408  0.9349  1.0291  1.1232  1.1232  1.1232 
 0.3076  0.4135  0.5194  0.6253  0.7312  0.8371  0.9430  1.0490  1.1549  1.2608  1.2873  1.2873 
 0.3407  0.4584  0.5761  0.6937  0.8114  0.9291  1.0468  1.1645  1.2822  1.3998  1.4587  1.4587 
 0.3773  0.5068  0.6362  0.7657  0.8951  1.0246  1.1540  1.2835  1.4129  1.5424  1.6395  1.6395 
 0.4200  0.5612  0.7024  0.8436  0.9849  1.1261  1.2673  1.4085  1.5497  1.6910  1.8322  1.8322 
 0.4701  0.6231  0.7761  0.9290  1.0820  1.2350  1.3880  1.5410  1.6940  1.8470  1.9999  2.0382 
 0.5290  0.6938  0.8585  1.0233  1.1880  1.3528  1.5175  1.6823  1.8470  2.0118  2.1766  2.2589 
 0.6789  0.8672  1.0555  1.2438  1.4321  1.6204  1.8087  1.9970  2.1852  2.3735  2.5618  2.7501 ];
         
[T,w]=meshgrid(fc_map_trq, fc_map_spd);
fc_map_kW=T.*w/1000;
fc_fuel_map_gpkWh=fc_fuel_map./fc_map_kW*3600;

%Eff 
%0.13 0.20 0.25 0.28 0.30 0.31 0.33 0.34 0.34 0.34 0.34 0.34  
%0.14 0.21 0.25 0.28 0.30 0.32 0.33 0.34 0.35 0.35 0.35 0.35  
%0.14 0.21 0.26 0.28 0.31 0.32 0.33 0.34 0.35 0.35 0.35 0.35  
%0.14 0.22 0.26 0.29 0.31 0.32 0.34 0.34 0.35 0.36 0.36 0.36  
%0.15 0.22 0.26 0.29 0.31 0.33 0.34 0.35 0.35 0.36 0.36 0.36  
%0.15 0.22 0.26 0.29 0.31 0.33 0.34 0.35 0.35 0.36 0.36 0.36  
%0.15 0.22 0.26 0.29 0.31 0.33 0.34 0.35 0.35 0.36 0.36 0.36  
%0.15 0.22 0.26 0.29 0.31 0.33 0.34 0.35 0.35 0.36 0.36 0.36  
%0.14 0.22 0.26 0.29 0.31 0.32 0.34 0.34 0.35 0.36 0.36 0.36  
%0.14 0.21 0.25 0.28 0.30 0.32 0.33 0.34 0.35 0.36 0.36 0.36  
%0.13 0.20 0.25 0.28 0.30 0.31 0.33 0.34 0.34 0.35 0.36 0.36  
%0.12 0.19 0.23 0.26 0.28 0.30 0.31 0.32 0.33 0.34 0.35 0.35  
%Min bsfc = 224 
%Max Eff = 0.36 
%ECO2 (g/s)
% 0.4378  0.5803  0.7228  0.8653  1.0079  1.1504  1.2929  1.4354  1.5779  1.5779  1.5779  1.5779 
% 0.5350  0.7131  0.8912  1.0694  1.2475  1.4256  1.6038  1.7819  1.9600  2.0046  2.0046  2.0046 
% 0.6289  0.8427  1.0564  1.2702  1.4840  1.6977  1.9115  2.1252  2.3390  2.4459  2.4459  2.4459 
% 0.7216  0.9710  1.2204  1.4698  1.7192  1.9685  2.2179  2.4673  2.7167  2.9038  2.9038  2.9038 
% 0.8149  1.1000  1.3850  1.6700  1.9550  2.2400  2.5250  2.8100  3.0951  3.3801  3.3801  3.3801 
% 0.9108  1.2314  1.5521  1.8727  2.1934  2.5140  2.8346  3.1553  3.4759  3.7966  3.8767  3.8767 
% 1.0111  1.3674  1.7236  2.0799  2.4362  2.7924  3.1487  3.5050  3.8612  4.2175  4.3956  4.3956 
% 1.1220  1.5139  1.9058  2.2977  2.6895  3.0814  3.4733  3.8652  4.2571  4.6490  4.9429  4.9429 
% 1.2511  1.6787  2.1062  2.5337  2.9612  3.3887  3.8163  4.2438  4.6713  5.0988  5.5263  5.5263 
% 1.4028  1.8659  2.3291  2.7922  3.2554  3.7185  4.1817  4.6448  5.1080  5.5711  6.0343  6.1501 
% 1.5812  2.0800  2.5787  3.0775  3.5763  4.0751  4.5738  5.0726  5.5714  6.0702  6.5689  6.8183 
% 2.0350  2.6051  3.1751  3.7451  4.3151  4.8852  5.4552  6.0252  6.5952  7.1653  7.7353  8.3053 

% ECO    g/s from FA model 
fc_co_map=[
 0.0099  0.0129  0.0160  0.0190  0.0221  0.0252  0.0282  0.0313  0.0344  0.0344  0.0344  0.0344 
 0.0119  0.0158  0.0196  0.0234  0.0273  0.0311  0.0349  0.0388  0.0426  0.0435  0.0435  0.0435 
 0.0140  0.0186  0.0232  0.0278  0.0323  0.0369  0.0415  0.0461  0.0507  0.0530  0.0530  0.0530 
 0.0160  0.0213  0.0267  0.0320  0.0374  0.0428  0.0481  0.0535  0.0589  0.0629  0.0629  0.0629 
 0.0180  0.0241  0.0302  0.0363  0.0425  0.0486  0.0547  0.0609  0.0670  0.0731  0.0731  0.0731 
 0.0200  0.0269  0.0338  0.0407  0.0476  0.0545  0.0614  0.0683  0.0752  0.0821  0.0838  0.0838 
 0.0222  0.0298  0.0375  0.0452  0.0528  0.0605  0.0681  0.0758  0.0835  0.0911  0.0950  0.0950 
 0.0246  0.0330  0.0414  0.0498  0.0583  0.0667  0.0751  0.0836  0.0920  0.1004  0.1067  0.1067 
 0.0273  0.0365  0.0457  0.0549  0.0641  0.0733  0.0825  0.0917  0.1009  0.1101  0.1193  0.1193 
 0.0306  0.0406  0.0505  0.0605  0.0704  0.0804  0.0904  0.1003  0.1103  0.1202  0.1302  0.1327 
 0.0344  0.0452  0.0559  0.0666  0.0773  0.0881  0.0988  0.1095  0.1202  0.1310  0.1417  0.1471 
 0.0442  0.0565  0.0687  0.0810  0.0932  0.1055  0.1177  0.1300  0.1423  0.1545  0.1668  0.1790 ];
        
% EHC    g/s from FA model 
fc_hc_map=[
 0.0079  0.0085  0.0091  0.0097  0.0103  0.0109  0.0115  0.0121  0.0127  0.0127  0.0127  0.0127 
 0.0083  0.0091  0.0098  0.0105  0.0113  0.0120  0.0128  0.0135  0.0142  0.0144  0.0144  0.0144 
 0.0087  0.0096  0.0105  0.0114  0.0123  0.0132  0.0140  0.0149  0.0158  0.0163  0.0163  0.0163 
 0.0091  0.0101  0.0112  0.0122  0.0132  0.0143  0.0153  0.0164  0.0174  0.0182  0.0182  0.0182 
 0.0095  0.0107  0.0118  0.0130  0.0142  0.0154  0.0166  0.0178  0.0190  0.0202  0.0202  0.0202 
 0.0099  0.0112  0.0125  0.0139  0.0152  0.0165  0.0179  0.0192  0.0206  0.0219  0.0222  0.0222 
 0.0103  0.0118  0.0133  0.0147  0.0162  0.0177  0.0192  0.0207  0.0222  0.0236  0.0244  0.0244 
 0.0108  0.0124  0.0140  0.0156  0.0173  0.0189  0.0205  0.0222  0.0238  0.0254  0.0267  0.0267 
 0.0113  0.0131  0.0149  0.0166  0.0184  0.0202  0.0220  0.0237  0.0255  0.0273  0.0291  0.0291 
 0.0119  0.0139  0.0158  0.0177  0.0196  0.0216  0.0235  0.0254  0.0273  0.0293  0.0312  0.0317 
 0.0127  0.0147  0.0168  0.0189  0.0210  0.0230  0.0251  0.0272  0.0293  0.0313  0.0334  0.0345 
 0.0146  0.0169  0.0193  0.0217  0.0240  0.0264  0.0288  0.0312  0.0335  0.0359  0.0383  0.0407 ];

% ENO    g/s from FA model 
fc_nox_map=[
 0.0000  0.0000  0.0014  0.0031  0.0047  0.0064  0.0080  0.0096  0.0113  0.0113  0.0113  0.0113  
 0.0000  0.0013  0.0034  0.0054  0.0075  0.0095  0.0116  0.0136  0.0157  0.0162  0.0162  0.0162  
 0.0003  0.0028  0.0053  0.0077  0.0102  0.0127  0.0151  0.0176  0.0201  0.0213  0.0213  0.0213  
 0.0014  0.0043  0.0072  0.0100  0.0129  0.0158  0.0187  0.0215  0.0244  0.0266  0.0266  0.0266  
 0.0025  0.0058  0.0091  0.0123  0.0156  0.0189  0.0222  0.0255  0.0288  0.0321  0.0321  0.0321  
 0.0036  0.0073  0.0110  0.0147  0.0184  0.0221  0.0258  0.0295  0.0332  0.0369  0.0378  0.0378  
 0.0047  0.0089  0.0130  0.0171  0.0212  0.0253  0.0294  0.0335  0.0376  0.0417  0.0438  0.0438  
 0.0060  0.0105  0.0151  0.0196  0.0241  0.0286  0.0331  0.0377  0.0422  0.0467  0.0501  0.0501  
 0.0075  0.0124  0.0174  0.0223  0.0272  0.0322  0.0371  0.0420  0.0469  0.0519  0.0568  0.0568  
 0.0093  0.0146  0.0199  0.0253  0.0306  0.0360  0.0413  0.0466  0.0520  0.0573  0.0627  0.0640  
 0.0113  0.0171  0.0228  0.0286  0.0343  0.0401  0.0458  0.0516  0.0573  0.0631  0.0688  0.0717  
 0.0166  0.0231  0.0297  0.0363  0.0428  0.0494  0.0560  0.0626  0.0691  0.0757  0.0823  0.0888  ];
        
% (g/s), engine out PM emissions indexed vertically by fc_map_spd and
% horizontally by fc_map_trq
fc_pm_map=zeros(size(fc_fuel_map));

% (g/s), engine out O2 indexed vertically by fc_map_spd and
% horizontally by fc_map_trq
fc_o2_map=zeros(size(fc_fuel_map));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cold Engine Maps
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fc_cold_tmp=20; %deg C
fc_fuel_map_cold=zeros(size(fc_fuel_map));
fc_hc_map_cold=zeros(size(fc_fuel_map));
fc_co_map_cold=zeros(size(fc_fuel_map));
fc_nox_map_cold=zeros(size(fc_fuel_map));
fc_pm_map_cold=zeros(size(fc_fuel_map));
%Process Cold Maps to generate Correction Factor Maps
names={'fc_fuel_map','fc_hc_map','fc_co_map','fc_nox_map','fc_pm_map'};
for i=1:length(names)
    %cold to hot raio, e.g. fc_fuel_map_c2h = fc_fuel_map_cold ./ fc_fuel_map
    eval([names{i},'_c2h=',names{i},'_cold./(',names{i},'+eps);'])
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LIMITS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% (N*m), estimated max torque curve of 1.5L Prius_jpn (43kW) engine
% indexed by fc_map_spd.
% Values obtained from user-scaled (previously blank axis) 
% mfgr's plot of torque vs. engine speed (fig.12: engine operation
% range).
lbft2Nm=1.356; %conversion from lbft to Nm

fc_max_trq=[57 60.5 62.5 64 65.9 67.2 68.5 69.8 71.1 72.4 73.7 75.2]*lbft2Nm; % N-m

clear lbft2Nm


% (N*m), closed throttle torque of the engine (max torque that 
% can be absorbed) indexed by fc_map_spd . All values set to -40 Nm since that 
% is what is required to crank the engine with the generator.
fc_ct_trq=ones(1,12)*(-40);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DEFAULT SCALING
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (--), used to scale fc_map_spd to simulate a faster or slower running engine 
fc_spd_scale=1.0;

% (--), used to scale fc_map_trq to simulate a higher or lower torque engine
fc_trq_scale=1.0;

fc_pwr_scale=fc_spd_scale*fc_trq_scale;   % --  scale fc power


% user definable mass scaling function
fc_mass_scale_fun=inline('(x(1)*fc_trq_scale+x(2))*(x(3)*fc_spd_scale+x(4))*(fc_base_mass+fc_acc_mass)+fc_fuel_mass','x','fc_spd_scale','fc_trq_scale','fc_base_mass','fc_acc_mass','fc_fuel_mass');
fc_mass_scale_coef=[1 0 1 0]; % coefficients of mass scaling function


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% STUFF THAT SCALES WITH TRQ & SPD SCALES (MASS AND INERTIA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fc_inertia=0.18*fc_pwr_scale;           % (kg*m^2), rotational inertia of the engine (unknown)
fc_max_pwr=(max(fc_map_spd.*fc_max_trq)/1000)*fc_pwr_scale; % kW     peak engine power

fc_base_mass=1.8*fc_max_pwr;            % (kg), mass of the engine block and head (base engine)
                                        %       mass penalty of 1.8 kg/kW from 1994 OTA report, Table 3 
fc_acc_mass=0.8*fc_max_pwr;             % kg    engine accy's, electrics, cntrl's - assumes mass penalty of 0.8 kg/kW (from OTA report)
fc_fuel_mass=0.6*fc_max_pwr;            % kg    mass of fuel and fuel tank (from OTA report)
fc_mass=round(fc_base_mass+fc_acc_mass+fc_fuel_mass); % kg  total engine/fuel system mass
fc_ext_sarea=0.3*(fc_max_pwr/100)^0.67;       % m^2    exterior surface area of engine

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% OTHER DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fc_fuel_den=0.749*1000; % (g/l), density of the fuel 
fc_fuel_lhv=42.6*1000; % (J/g), lower heating value of the fuel
% fc_inertia=0.1; % (kg*m^2), rotational inertia of the engine; unknown
%fc_inertia=0;
%fc_mass=max(fc_map_spd.*fc_max_trq)/(0.285*1000); % (kg), mass of the engine
% estimated assuming a specific energy of 0.285 kW/kg (including exhaust and other accessories)
% fc_coolant_init_temp=20;   % (C), initial engine coolant temperature

% vc_idle_spd = 701*2*pi/60;    % idle speed is 701 rpm = 73.4 rad/s

fc_air_fuel_ratio=14.5;           % air/fuel ratio (stoic) on mass basis

%the following was added for the new thermal modeling of the engine 12/17/98 ss and sb
fc_tstat=96;                  % C      engine coolant thermostat set temperature (typically 95 +/- 5 C)
fc_cp=500;                    % J/kgK  ave cp of engine (iron=500, Al or Mg = 1000)
fc_h_cp=500;                  % J/kgK  ave cp of hood & engine compartment (iron=500, Al or Mg = 1000)
fc_hood_sarea=1.5;            % m^2    surface area of hood/eng compt.
fc_emisv=0.8;                 %        emissivity of engine ext surface/hood int surface
fc_hood_emisv=0.9;            %        emissivity hood ext
fc_h_air_flow=0.0;            % kg/s   heater air flow rate (140 cfm=0.07)
fc_cl2h_eff=0.7;              % --     ave cabin heater HX eff (based on air side)
fc_c2i_th_cond=500;           % W/K    conductance btwn engine cyl & int
fc_i2x_th_cond=500;           % W/K    conductance btwn engine int & ext
fc_h2x_th_cond=10;            % W/K    conductance btwn engine & engine compartment

% calc "predicted" exh gas flow rate and engine-out (EO) temp
fc_ex_pwr_frac=[0.40 0.30];                        % --   frac of waste heat that goes to exhaust as func of engine speed
fc_exflow_map=fc_fuel_map*(1+14.5);                % g/s  ex gas flow map:  for SI engines, exflow=(fuel use)*[1 + (stoic A/F ratio)]
fc_waste_pwr_map=fc_fuel_map*fc_fuel_lhv - T.*w;   % W    tot FC waste heat = (fuel pwr) - (mech out pwr)
spd=fc_map_spd;
fc_ex_pwr_map=zeros(size(fc_waste_pwr_map));       % W   initialize size of ex pwr map
for i=1:length(spd)
 fc_ex_pwr_map(i,:)=fc_waste_pwr_map(i,:)*interp1([min(spd) max(spd)],fc_ex_pwr_frac,spd(i)); % W  trq-spd map of waste heat to exh 
end
fc_extmp_map=fc_ex_pwr_map./(fc_exflow_map*1089/1000) + 20;  % W   EO ex gas temp = Q/(MF*cp) + Tamb (assumes engine tested ~20 C)

clear T w fc_waste_pwr_map fc_ex_pwr_map spd
% clear unnecessary variables
clear T w fc_map_kW fc_hc_map_gpkWh fc_co_map_gpkWh fc_pm_map_gpkWh
clear fc_nox_map_gpkWh 
%clear fc_fuel_map_gpkWh


%the following variable is not used directly in modelling and should always be equal to one
%it's used for initialization purposes
fc_eff_scale=1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REVISION HISTORY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 6/15/00 ss: created from old file named FC_PRIUS_ANL and new data from John Anderson and Feng An model from
% actual test data.
% 01/31/01: vhj added fc_cold=0, added cold map variables, added +eps to avoid dividing by zero
% 2/2/01: ss updated prius to prius_jpn
% 02/26/01: vhj added variable definition of fc_o2_map (used in NOx absorber emis.)
% 7/30/01:tm added user definable mass scaling function mass=f(fc_spd_scale,fc_trq_scale,fc_base_mass,fc_acc_mass,fc_fuel_mass)

