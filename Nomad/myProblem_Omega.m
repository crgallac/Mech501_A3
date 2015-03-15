function [ A,l,u ] = myProblem_Omega(n)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

A1=[1 2 1 1; 3 1 2 -1; 0 -1 -4 0];
U=eye(4,4);
L=-1*eye(4,4);

b= [5; 4; -1.5];
l1= [0; 0; 0; 0;];
u1= [10; 10; 10; 10;]; 

A=[A1; L; U;]; 

u=[b;l1;u1;]; 
% u=u';
m=length(u); 

l=ones(m,1); 

l(l==1)=-inf; 
% l=l'; 



end

