%-------------------------------------------------------------------------------------
%
% M-file: cp_N2.m  [kJ/kmol,K respectively kJ/kg,K]
%
% Data from L. Wester, 1998
%
% Created: 000807 by Kristina Johansson
% Revision history:
%--------------------------------------------------------------------------------------
function f=cp_N2(T)

M_N2=28.0134; %[kg/kmol]

%y=M_N2*cp=Cp

a_min1=0;
a_0=28.298404;
a_1=12.689906;
a_2=-72.418092;
a_3=185.36290;
a_4=-220.42323;
a_5=137.35517;
a_6=-43.809407;
a_7=5.6619528;

y=a_min1*(T/1000)^(-1)+a_0*(T/1000)^(0)+a_1*(T/1000)^(1)+a_2*(T/1000)^(2)+a_3*(T/1000)^(3)+a_4*(T/1000)^(4)+a_5*(T/1000)^(5)+a_6*(T/1000)^(6)+a_7*(T/1000)^(7);
z=y/M_N2;

f=[y z];