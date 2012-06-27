% fc_net_vehicle_r16_in.m  ADVISOR 2003  input file created: 02-May-2003 12:05:55

global vinf 

vinf.name='fc_net_vehicle_r16_in';
vinf.drivetrain.name='fuel_cell';
vinf.fuel_converter.name='FC_ANL50GAS';
vinf.fuel_converter.ver='fcell';
vinf.fuel_converter.type='net';
vinf.motor_controller.name='MC_AC83';
vinf.energy_storage.name='ESS_LI7_temp';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='li';
vinf.transmission.name='TX_1SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR_REGEN';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_SUV_RWD';
vinf.exhaust_aftertreat.name='EX_FUELCELL';
vinf.powertrain_control.name='PTC_FUELCELL';
vinf.powertrain_control.ver='fc';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='wh_radius';
vinf.variables.value(1)=0.343;
vinf.variables.default(1)=0.282;
vinf.variables.name{2}='mc_trq_scale';
vinf.variables.value(2)=1.29;
vinf.variables.default(2)=1;
vinf.variables.name{3}='fc_pwr_scale';
vinf.variables.value(3)=1.107;
vinf.variables.default(3)=1;
vinf.variables.name{4}='fc_trq_scale';
vinf.variables.value(4)=1.107;
vinf.variables.default(4)=1;
vinf.variables.name{5}='cs_max_pwr_fall_rate';
vinf.variables.value(5)=-50000;
vinf.variables.default(5)=-3000;
vinf.variables.name{6}='cs_max_pwr_rise_rate';
vinf.variables.value(6)=20000;
vinf.variables.default(6)=2000;
vinf.variables.name{7}='mc_max_crrnt';
vinf.variables.value(7)=1000;
vinf.variables.default(7)=400;
vinf.variables.name{8}='mc_min_volts';
vinf.variables.value(8)=60;
vinf.variables.default(8)=180;
vinf.variables.name{9}='cs_min_pwr';
vinf.variables.value(9)=5000;
vinf.variables.default(9)=7805.7;
vinf.variables.name{10}='cs_max_pwr';
vinf.variables.value(10)=49537;
vinf.variables.default(10)=49436.1;
vinf.variables.name{11}='cs_charge_pwr';
vinf.variables.value(11)=25000;
vinf.variables.default(11)=1000;
vinf.variables.name{12}='cs_min_off_time';
vinf.variables.value(12)=0;
vinf.variables.default(12)=90;
vinf.variables.name{13}='veh_glider_mass';
vinf.variables.value(13)=1202;
vinf.variables.default(13)=1179.6984;
vinf.variables.name{14}='ess_cap_scale';
vinf.variables.value(14)=2;
vinf.variables.default(14)=1;
vinf.variables.name{15}='ess_module_num';
vinf.variables.value(15)=27;
vinf.variables.default(15)=0;
vinf.variables.name{16}='cs_fc_on';
vinf.variables.value(16)=1;
vinf.variables.default(16)=0;
vinf.variables.name{17}='fd_ratio';
vinf.variables.value(17)=0.94286;
vinf.variables.default(17)=1;
