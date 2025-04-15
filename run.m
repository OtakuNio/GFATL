%% Initialization
warning('off');
clear all
clc;

addpath('./dataset');

%% Function Use
% ---------- define parameter ----------
neighborNum=3;% int:[0, 20]
proximityOrder=1;% int:[0, 20]
fliterOrder=2;% int:[0, 10]
alpha=1;% float:[0.001, 0.01, 0.1, 1, 10, 100]
beta=1;% float:[0.001, 0.01, 0.1, 1, 10, 100]
zeta=1;% float:[0.001, 0.01, 0.1, 1, 10, 100]
gamma=-1;% gamma<0

mu=1.9;
rho=10e-3;
rhoMax=10e15;
epsilon=10e-6;
maxIter=150;% int

isSvd=0;% 1 or 0
isNormal_1=1;% 1 or 0
isNormal_2=1;% 1 or 0

% ---------- data process ----------
fileName = "dataset_file_name";
load(fileName + ".mat");
data = data;
label = label;

[return_matrix, return_label] = function_GFATL(fileName, data, label, neighborNum, proximityOrder, fliterOrder, alpha, beta, zeta, gamma, mu, rho, rhoMax, epsilon, maxIter, isSvd, isNormal_1, isNormal_2);
