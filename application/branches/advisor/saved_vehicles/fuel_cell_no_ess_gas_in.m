% fuel_cell_no_ess_gas_in.m  ADVISOR 2003  input file created: 23-May-2003 16:10:17

global vinf 

vinf.name='fuel_cell_no_ess_gas_in';
vinf.drivetrain.name='fuel_cell';
vinf.fuel_converter.name='FC_ANL50GAS';
vinf.fuel_converter.ver='fcell';
vinf.fuel_converter.type='net';
vinf.motor_controller.name='MC_PM49';
vinf.energy_storage.name='ESS_PB25';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='pb';
vinf.transmission.name='TX_1SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR_REGEN';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_LGCAR';
vinf.exhaust_aftertreat.name='EX_FUELCELL';
vinf.powertrain_control.name='PTC_FUELCELL';
vinf.powertrain_control.ver='fc';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='ess_on';
vinf.variables.value(1)=0;
vinf.variables.default(1)=1;
vinf.variables.name{2}='ess_module_mass';
vinf.variables.value(2)=0.01;
vinf.variables.default(2)=11;
vinf.variables.name{3}='fc_pwr_scale';
vinf.variables.value(3)=1.2;
vinf.variables.default(3)=1;
vinf.variables.name{4}='fc_trq_scale';
vinf.variables.value(4)=1.2;
vinf.variables.default(4)=1;
vinf.variables.name{5}='cs_charge_pwr';
vinf.variables.value(5)=0;
vinf.variables.default(5)=1000;
vinf.variables.name{6}='cs_max_pwr';
vinf.variables.value(6)=50000;
vinf.variables.default(6)=47500;
vinf.variables.name{7}='cs_max_pwr_fall_rate';
vinf.variables.value(7)=-8000;
vinf.variables.default(7)=-3000;
vinf.variables.name{8}='cs_max_pwr_rise_rate';
vinf.variables.value(8)=8000;
vinf.variables.default(8)=2000;
vinf.variables.name{9}='cs_min_off_time';
vinf.variables.value(9)=0;
vinf.variables.default(9)=90;
vinf.variables.name{10}='cs_min_pwr';
vinf.variables.value(10)=0;
vinf.variables.default(10)=7500;