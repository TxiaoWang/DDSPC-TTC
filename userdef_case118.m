%%*************************************************************************
% This function defines the locations of wind and solar PV generators, and
% load variatons.
% 
%
% NOTE: We use the bus index and gen index to mapping mpc struct, make sure
%       the data you type in the following tables are exactly right.
%
% This file is modified from  Hao Sheng, McGill University (2018)
% Hao's Github: https://github.com/shenghao/LRA-PPF
% 
% H. Sheng, & X. Wang, "Probabilistic power flow calculation 
% using non-intrusive low-rank approximation method," IEEE Transactions 
% on Power Systems, vol. 34, no. 4, pp. 3014-3025, 2019.
%
% H. Sheng, & X. Wang, " A Non-Intrusive Low-Rank Approximation Method  
% for Assessing the Probabilistic Available Transfer Capability," 2018. 
% arXiv preprint arXiv:1810.08156.
%
% reference:
%
% S. H. Jangamshetti, V. G. Rau, "Site matching of wind turbine 
% generators: a case study,"IEEE Transactions on Energy Conversion, 
% vol. 14, no. 4, pp. 1537--1543, 1999.
%
% F. Y. Ettoumi, A. Mefti, A. Adane, and M. Y. Bouroubi, "Statistical 
% analysis of solar measurements in Algeria using beta distributions," 
% Renewable Energy, vol. 26, no. 1, pp. 47--67, 2002.
%
%
%
% 
% Modified by Xiaoting Wang McGill University (2020)
%%*************************************************************************
function userdef = userdef_case118()

%% 1. Specify the locations at where the wind power plants are installed.
% *************************************************************************

%   Bus_I, Gen_Idx,   c,         k,        Pr,      Vr,      Vin,    Vout,    -PF,      +PF.
userdef.wind = [...
     10      5     8.0063     2.1182    60.0000  13.5000   3.5000  25.0000  -0.9500   0.9500;
     25     11    11.5762     2.7022    60.0000  13.8000   3.5000  25.0000  -0.9500   0.9500;
     26     12    11.2441     3.6322    60.0000  13.0000   5.0000  25.0000  -0.9500   0.9500;
     49     21    12.4813     3.2465    60.0000  12.9000   5.0000  24.0000  -0.9500   0.9500;
     65     28    11.1533     3.2895    60.0000  12.0000   5.5000  24.0000  -0.9500   0.9500;
     66     29     8.8261     2.6511    60.0000  10.0000   3.5000  20.0000  -0.9500   0.9500;
];


%% 2. Specify the locations at where the solar PV power plants farms are installed.
% *************************************************************************

% Bus_I,   Gen_Idx, alpha,     beta,    min,      max,         Pr,       Rc,      Rstd,      -PF,     +PF.
userdef.solar = [...
     12      6     1.1100     0.7300   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;
     59     25     1.3200     0.6900   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;
     61     26     1.7000     0.7400   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;
     80     37     2.9700     0.9400   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;
    103     46     2.9700     2.0000   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;
    100     45     1.7800     0.8500   0.0000  1000.0000    40.0000   150.0000  1000.0000  -1.0000   1.0000;   
];


%% 3. Specify the load variation by var/mean.
% *************************************************************************
userdef.load = [...
     0.05;
];


