%%*****************************************************************
% This file defines the configuration of ULTC data required in    %
% DSATools/PSAT ASCII Powerflow File Format.                      %
%                                                                 %
% This file is created by Xiaoting Wang, McGill University (2020) %
%%***************************************************************** 

function ULTC = user_ULTC()

%% 1. Description of the data 
%  1: FBus: FROM bus number. 
%  2: TBus: TO bus number.
%  3: Meter end: 1-character metered end identifier used for area interchange control:
%     'F' or blank FROM end of the ULTC transformer, 'T' TO end of the ULTC transformer.
%  4: FRatio: Transformer FROM-side (primary) turns ratio in pu.
%  5: TRatio: Transformer TO-side (secondary) turns ratio in pu.
%  6: Angle: Transformer phase shift angle in degrees (when positive, at zero current, the FROM bus angle leads the TO bus angle).
%  7: Max R: Upper limit for FROM-side turns ratio in pu.
%  8: Min R: Lower limit for FROM-side turns ratio in pu.
%  9: Step: FROM-side turns ratio step size in pu.
% 10: Max A: Upper limit for phase shift angle in degrees.
% 11: Min A: Lower limit for phase shift angle in degrees.
% 12: A Step: Number of phase shift angle steps. Currently the number of angle steps is neglected.
% 13: Ctrl type: 1-character control type identifier:
%     'V' Self or remote bus voltage control
%     'Q' MVAR flow control
%     'P' MW flow control
% 14: Ctrl side: 1-character text string that specifies the local voltage control location:
%     'F' FROM bus or tap side
%     'T' TO bus or impedance side
% 15: Max MW: Upper limit for active power flow (in MW) through the ULTC transformer.
% 16: Min MW: Lower limit for active power flow (in MW) through the ULTC transformer.
% 17: Max MVAR: Upper limit for reactive power flow (in MVAR) through the ULTC transformer.
% 18: Min MVAR: Lower limit for reactive power flow (in MVAR) through the ULTC transformer.
% 19: V Hi limit: Upper limit for controlled bus voltage in pu.
% 20: V Lo limit: Lower limit for controlled bus voltage in pu.
% 21: Ctrl Bus: Controlled bus number.

%% 2. Specify the data value
%   FBus   TBus  Meter end   FRatio   TRatio  Angle   Max R   Min R   Step   Max A    Min A    A Step  Ctrl type  Ctrl side  Max MW   Min MW   Max MVAR   Min MVAR   V Hi limit   V Lo limit   Ctrl Bus
ULTC = {...
    81      80     'F'        1.085    1.0     0       1.185  0.775   0.145   0.00    0.00      0.00       'V'       'T'     9999.00  -9999.00  9999.00   -9999.00      1.06        0.94          80};
