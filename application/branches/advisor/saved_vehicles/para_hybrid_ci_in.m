% para_hybrid_ci_in.m  ADVISOR 2003  input file created: 02-Jun-2003 13:53:28

global vinf 

vinf.name='para_hybrid_ci_in';
vinf.drivetrain.name='parallel';
vinf.fuel_converter.name='FC_CI67_emis';
vinf.fuel_converter.ver='ic';
vinf.fuel_converter.type='ci';
vinf.torque_coupling.name='TC_DUMMY';
vinf.motor_controller.name='MC_PM49';
vinf.energy_storage.name='ESS_NIMH45_OVONIC';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='nimh';
vinf.transmission.name='TX_5SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_SMCAR_REGEN';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_LGCAR';
vinf.exhaust_aftertreat.name='EX_CI';
vinf.powertrain_control.name='PTC_PAR';
vinf.powertrain_control.ver='par';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HYBRID';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='cs_charge_trq';
vinf.variables.value(1)=15;
vinf.variables.default(1)=25.7932;
vinf.variables.name{2}='cs_electric_launch_spd_hi';
vinf.variables.value(2)=4;
vinf.variables.default(2)=0;
vinf.variables.name{3}='cs_electric_launch_spd_lo';
vinf.variables.value(3)=4;
vinf.variables.default(3)=0;
vinf.variables.name{4}='cs_lo_soc';
vinf.variables.value(4)=0.5;
vinf.variables.default(4)=0.6;
vinf.variables.name{5}='cs_min_trq_frac';
vinf.variables.value(5)=0;
vinf.variables.default(5)=0.4;
vinf.variables.name{6}='vc_fc_warm_tmp_frac';
vinf.variables.value(6)=0;
vinf.variables.default(6)=0.85;
vinf.variables.name{7}='cs_electric_decel_spd';
vinf.variables.value(7)=10;
vinf.variables.default(7)=0;
