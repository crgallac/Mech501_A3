% INPUT PARAMETERS
%
% p_f      Name of m-file computing the function value.
% p_c      Name of m-file computing the nonlinear constraints.
% x_L      Lower bounds for x
% x_U      Upper bounds for x
% A        Linear constraint matrix.
% b_L      Lower bounds for linear constraints.
% b_U      Upper bounds for linear constraints.
% c_L      Lower bounds for nonlinear constraints.
% c_U      Upper bounds for nonlinear constraints.
% I        Set of integer variables, default I=[].
%

A=[1 2 1 1; 3 1 2 -1; 0 -1 -4 0];
b= [5; 4; -1.5]; 

x0 = [5; 5; 5; 5;];    % Starting guess at the solution



% function Result = gclSolve(p_f, p_c, x_L, x_U, A, b_L, b_U,...
%                   c_L, c_U, I, GLOBAL, PriLev, varargin)


Result=gclSolve(@fminimum, [], [0 0 0 0], [10 10 10 10],A, [], b); 

Result