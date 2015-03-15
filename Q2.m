A=[1 2 1 1; 3 1 2 -1; 0 -1 -4 0];
b= [5; 4; -1.5]; 

x0 = [5; 5; 5; 5;];    % Starting guess at the solution

% options = optimoptions('fmincon','FinDiffType','central');
options = optimoptions('fmincon','GradObj','on');


% [x, fval] = fmincon(@fminimumAnalGrad,x0,A,b,[],[],[0 0 0 0],[10 10 10 10],[],[]);

[x, fval] = fmincon(@fminimumAnalGrad,x0,A,b,[],[],[0 0 0 0],[10 10 10 10],[],[]);

x

%options 
%FinDiffType
%GradConstr