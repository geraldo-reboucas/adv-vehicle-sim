function [sys,x0,str,ts] = sfuntmpl(t,x,u,flag,P1,P2,P3)
%SFUNTMPL General M-file S-function template
%   With M-file S-functions, you can define you own ordinary differential
%   equations (ODEs), discrete system equations, and/or just about
%   any type of algorithm to be used within a Simulink block diagram.
%
%   The general form of an M-File S-function syntax is:
%       [SYS,X0,STR,TS] = SFUNC(T,X,U,FLAG,P1,...,Pn)
%
%   What is returned by SFUNC at a given point in time, T, depends on the
%   value of the FLAG, the current state vector, X, and the current
%   input vector, U.
%
%   FLAG   RESULT             DESCRIPTION
%   -----  ------             --------------------------------------------
%   0      [SIZES,X0,STR,TS]  Initialization, return system sizes in SYS,
%                             initial state in X0, state ordering strings
%                             in STR, and sample times in TS.
%   1      DX                 Return continuous state derivatives in SYS.
%   2      DS                 Update discrete states SYS = X(n+1)
%   3      Y                  Return outputs in SYS.
%   4      TNEXT              Return next time hit for variable step sample
%                             time in SYS.
%   5                         Reserved for future (root finding).
%   9      []                 Termination, perform any cleanup SYS=[].
%
%
%   The state vectors, X and X0 consists of continuous states followed
%   by discrete states.
%
%   Optional parameters, P1,...,Pn can be provided to the S-function and
%   used during any FLAG operation.
%
%   When SFUNC is called with FLAG = 0, the following information
%   should be returned:
%
%      SYS(1) = Number of continuous states.
%      SYS(2) = Number of discrete states.
%      SYS(3) = Number of outputs.
%      SYS(4) = Number of inputs.
%               Any of the first four elements in SYS can be specified
%               as -1 indicating that they are dynamically sized. The
%               actual length for all other flags will be equal to the
%               length of the input, U.
%      SYS(5) = Reserved for root finding. Must be zero.
%      SYS(6) = Direct feedthrough flag (1=yes, 0=no). The s-function
%               has direct feedthrough if U is used during the FLAG=3
%               call. Setting this to 0 is akin to making a promise that
%               U will not be used during FLAG=3. If you break the promise
%               then unpredictable results will occur.
%      SYS(7) = Number of sample times. This is the number of rows in TS.
%
%
%      X0     = Initial state conditions or [] if no states.
%
%      STR    = State ordering strings which is generally specified as [].
%
%      TS     = An m-by-2 matrix containing the sample time
%               (period, offset) information. Where m = number of sample
%               times. The ordering of the sample times must be:
%
%               TS = [0      0,      : Continuous sample time.
%                     0      1,      : Continuous, but fixed in minor step
%                                      sample time.
%                     PERIOD OFFSET, : Discrete sample time where
%                                      PERIOD > 0 & OFFSET < PERIOD.
%                     -2     0];     : Variable step discrete sample time
%                                      where FLAG=4 is used to get time of
%                                      next hit.
%
%               There can be more than one sample time providing
%               they are ordered such that they are monotonically
%               increasing. Only the needed sample times should be
%               specified in TS. When specifying than one
%               sample time, you must check for sample hits explicitly by
%               seeing if
%                  abs(round((T-OFFSET)/PERIOD) - (T-OFFSET)/PERIOD)
%               is within a specified tolerance, generally 1e-8. This
%               tolerance is dependent upon your model's sampling times
%               and simulation time.
%
%               You can also specify that the sample time of the S-function
%               is inherited from the driving block. For functions which
%               change during minor steps, this is done by
%               specifying SYS(7) = 1 and TS = [-1 0]. For functions which
%               are held during minor steps, this is done by specifying
%               SYS(7) = 1 and TS = [-1 -1].

%   Copyright (c) 1990-1998 by The MathWorks, Inc. All Rights Reserved.
%   $Revision: 1.0 $

%
% The following outlines the general structure of an S-function.
%
switch flag,
   
   %%%%%%%%%%%%%%%%%%
   % Initialization %
   %%%%%%%%%%%%%%%%%%
case 0,
   [sys,x0,str,ts]=mdlInitializeSizes;
   
   %%%%%%%%%%%%%%%
   % Derivatives %
   %%%%%%%%%%%%%%%
case 1,
   sys=mdlDerivatives(t,x,u);
   
   %%%%%%%%%%
   % Update %
   %%%%%%%%%%
case 2,
   sys=mdlUpdate(t,x,u);
   
   %%%%%%%%%%%
   % Outputs %
   %%%%%%%%%%%
case 3,
   sys=mdlOutputs(t,x,u,P1,P2,P3);
   
   %%%%%%%%%%%%%%%%%%%%%%%
   % GetTimeOfNextVarHit %
   %%%%%%%%%%%%%%%%%%%%%%%
case 4,
   sys=mdlGetTimeOfNextVarHit(t,x,u);
   
   %%%%%%%%%%%%%
   % Terminate %
   %%%%%%%%%%%%%
case 9,
   sys=mdlTerminate(t,x,u);
   
   %%%%%%%%%%%%%%%%%%%%
   % Unexpected flags %
   %%%%%%%%%%%%%%%%%%%%
otherwise
   error(['Unhandled flag = ',num2str(flag)]);
   
end

% end sfuntmpl

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts]=mdlInitializeSizes

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 0;
sizes.NumOutputs     = 1;
sizes.NumInputs      = 2;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);

%
% initialize the initial conditions
%
x0  = [];

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times
%
ts  = [0 0];

% end mdlInitializeSizes

%
%=============================================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%=============================================================================
%
function sys=mdlDerivatives(t,x,u)

sys = [];

% end mdlDerivatives

%
%=============================================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, and major time step
% requirements.
%=============================================================================
%
function sys=mdlUpdate(t,x,u)

sys = [];

% end mdlUpdate

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u,P1,P2,P3)

spd=u(1);
pwr=u(2);

map_spd_out=P1;
map_trq_out=P2;
map_pwr_in=P3;

if spd==0
   trq_out=0;
   step1_method=[];
   step2_method=[];
else
   
if spd>max(map_spd_out)
   pwr_in_vec=map_pwr_in(end,:)+(map_pwr_in(end,:)-map_pwr_in(end-1,:))...
      /(map_spd_out(end)-map_spd_out(end-1))...
      *(spd-map_spd_out(end));
   step1_method=1;
elseif spd<min(map_spd_out)
   pwr_in_vec=map_pwr_in(1,:)+(map_pwr_in(2,:)-map_pwr_in(1,:))...
      /(map_spd_out(2)-map_spd_out(1))...
      *(spd-map_spd_out(1));
   step1_method=-1;
else
   pwr_in_vec=interp2(map_spd_out,map_trq_out,map_pwr_in',spd,map_trq_out)';
   step1_method=0;
end

% reorder the pwr_in_vec and map_trq_out vectors to prevent interpolation errors
sorted_mat=sortrows([pwr_in_vec' map_trq_out'],1); % sort ascending order indexed by pwr_in_vec
pwr_in_vec=sorted_mat(:,1)'; % reassign 
map_trq_out=sorted_mat(:,2)'; % reassign 

if pwr>max(pwr_in_vec)
   trq_out=map_trq_out(end)+(map_trq_out(end)-map_trq_out(end-1))/(pwr_in_vec(end)-pwr_in_vec(end-1))...
      *(pwr-pwr_in_vec(end));
   step2_method=1;
elseif pwr<min(pwr_in_vec)
   trq_out=map_trq_out(1)+(map_trq_out(2)-map_trq_out(1))/(pwr_in_vec(2)-pwr_in_vec(1))...
      *(pwr-pwr_in_vec(1));
   step2_method=-1;
else
   trq_out=interp1(pwr_in_vec,map_trq_out,pwr);
   step2_method=0;
end

end

% saturate gross extrapolation errors
if pwr<0
   if trq_out*spd/(pwr+eps)>2
      trq_out=(2*pwr)/(spd+eps);
   end
else
   if pwr/(trq_out*spd+eps)>2
      trq_out=pwr/2/(spd+eps);
   end
end

step1_method;
step2_method;

sys=[trq_out];

% end mdlOutputs

%
%=============================================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block.  Note that the result is
% absolute time.  Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] in the sample time array in
% mdlInitializeSizes.
%=============================================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

% end mdlGetTimeOfNextVarHit

%
%=============================================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=============================================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate