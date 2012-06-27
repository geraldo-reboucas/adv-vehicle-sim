% TRANS_BUS_ser_new_in.m  ADVISOR 3.0  input file created: 08-Jan-2001 13:35:19
% name changed to TransitBus_hybrid_in for ADVISOR 3.1 release: 19 Jan 2001 14:30
% ...version info updated to ADVISOR 3.1 compliant info
% 26-Jan-2001 mpo: corrected the powertrain version to 'ser' (series) from 'conv'

global vinf 

vinf.name='TransitBus_hybrid_in';
vinf.drivetrain.name='series';
vinf.fuel_converter.name='FC_CI171';
vinf.fuel_converter.ver='ic';
vinf.fuel_converter.type='ci';
vinf.generator.name='GC_ETA95';
vinf.generator.ver='reg';
vinf.generator.type='reg';
vinf.motor_controller.name='MC_AC75';
vinf.energy_storage.name='ESS_PB85';
vinf.energy_storage.ver='rint';
vinf.energy_storage.type='pb';
vinf.transmission.name='TX_1SPD';
vinf.transmission.ver='man';
vinf.transmission.type='man';
vinf.wheel_axle.name='WH_HEAVY';
vinf.wheel_axle.ver='Crr';
vinf.wheel_axle.type='Crr';
vinf.vehicle.name='VEH_ORIONVI';
vinf.exhaust_aftertreat.name='EX_IC_NULL';
vinf.powertrain_control.name='PTC_SERFO';
vinf.powertrain_control.ver='ser';
vinf.powertrain_control.type='man';
vinf.accessory.name='ACC_HEAVY';
vinf.accessory.ver='Const';
vinf.accessory.type='Const';
vinf.variables.name{1}='gc_spd_scale';
vinf.variables.value(1)=0.35;
vinf.variables.default(1)=1;
vinf.variables.name{2}='gc_trq_scale';
vinf.variables.value(2)=2.3386;
vinf.variables.default(2)=1;
vinf.variables.name{3}='veh_mass';
vinf.variables.value(3)=15940;
vinf.variables.default(3)=16027;
vinf.variables.name{4}='fc_trq_scale';
vinf.variables.value(4)=1.0029;
vinf.variables.default(4)=1;
vinf.variables.name{5}='wh_1st_rrc';
vinf.variables.value(5)=0.00938;
vinf.variables.default(5)=0.008;
vinf.variables.name{6}='mc_trq_scale';
vinf.variables.value(6)=2.4922;
vinf.variables.default(6)=1;
vinf.variables.name{7}='mc_overtrq_factor';
vinf.variables.value(7)=1.2;
vinf.variables.default(7)=1.8;
vinf.variables.name{8}='acc_elec_pwr';
vinf.variables.value(8)=14000;
vinf.variables.default(8)=0;
vinf.variables.name{9}='ess_module_num';
vinf.variables.value(9)=46;
vinf.variables.default(9)=0;
vinf.variables.name{10}='acc_mech_pwr';
vinf.variables.value(10)=0;
vinf.variables.default(10)=7457;
vinf.variables.name{11}='veh_front_wt_frac';
vinf.variables.value(11)=0.35;
vinf.variables.default(11)=0.45;
vinf.variables.name{12}='veh_FA';
vinf.variables.value(12)=8.0516;
vinf.variables.default(12)=7.2413;
vinf.variables.name{13}='wh_radius';
vinf.variables.value(13)=0.4864;
vinf.variables.default(13)=0.5;
vinf.variables.name{14}='cs_hi_soc';
vinf.variables.value(14)=0.9;
vinf.variables.default(14)=0.8;
vinf.variables.name{15}='cs_lo_soc';
vinf.variables.value(15)=0.6;
vinf.variables.default(15)=0.4;
vinf.variables.name{16}='cs_max_pwr';
vinf.variables.value(16)=171000;
vinf.variables.default(16)=94331.05;
vinf.variables.name{17}='cs_max_pwr_fall_rate';
vinf.variables.value(17)=-10000;
vinf.variables.default(17)=-3000;
vinf.variables.name{18}='cs_max_pwr_rise_rate';
vinf.variables.value(18)=10000;
vinf.variables.default(18)=2000;
vinf.variables.name{19}='cs_min_off_time';
vinf.variables.value(19)=0;
vinf.variables.default(19)=90;
vinf.variables.name{20}='cs_min_pwr';
vinf.variables.value(20)=15000;
vinf.variables.default(20)=25726.65;
vinf.variables.name{21}='cs_fc_init_state';
vinf.variables.value(21)=1;
vinf.variables.default(21)=0;
