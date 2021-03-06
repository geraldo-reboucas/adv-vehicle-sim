% fuel_cell_gas_in.m  ADVISOR 2003  input file created: 23-May-2003 14:15:38

global vinf 

vinf.name='fuel_cell_gas_in';
vinf.drivetrain.name='fuel_cell';
vinf.fuel_converter.name='FC_ANL50GAS';
vinf.fuel_converter.ver='fcell';
vinf.fuel_converter.type='net';
vinf.motor_controller.name='MC_AC75';
vinf.energy_storage.name='ESS_NiMH7_rc_temp';
vinf.energy_storage.ver='rc';
vinf.energy_storage.type='nimh';
vinf.transmission.name='TX_1SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR_REGEN';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_LGCAR';
vinf.exhaust_aftertreat.name='EX_FUELCELL_NULL';
vinf.powertrain_control.name='PTC_FUELCELL';
vinf.powertrain_control.ver='fc';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='cs_max_pwr_fall_rate';
vinf.variables.value(1)=-8000;
vinf.variables.default(1)=-3000;
vinf.variables.name{2}='cs_max_pwr_rise_rate';
vinf.variables.value(2)=8000;
vinf.variables.default(2)=2000;
vinf.variables.name{3}='ess_module_num';
vinf.variables.value(3)=40;
vinf.variables.default(3)=0;
vinf.variables.name{4}='fc_pwr_scale';
vinf.variables.value(4)=1.4;
vinf.variables.default(4)=1;
vinf.variables.name{5}='fc_trq_scale';
vinf.variables.value(5)=1.4;
vinf.variables.default(5)=1;
vinf.variables.name{6}='mc_trq_scale';
vinf.variables.value(6)=0.7;
vinf.variables.default(6)=1;
vinf.variables.name{7}='fd_ratio';
vinf.variables.value(7)=0.86501;
vinf.variables.default(7)=1;
vinf.variables.name{8}='mc_min_volts';
vinf.variables.value(8)=60;
vinf.variables.default(8)=120;
vinf.variables.name{9}='mc_max_crrnt';
vinf.variables.value(9)=1000;
vinf.variables.default(9)=480;
