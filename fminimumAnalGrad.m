%Q2

function [f, grad]=  fminimumAnalGrad(x)

f=x(1)^2+.5*x(2)^2+x(3)^2+.5*x(4)^2 -x(1)*x(3)+x(3)*x(4)- x(1)- 3*x(2)+x(3)-x(4);

grad= [2*x(1)-x(3)-1; x(2)-3; 2*x(3)-x(1)+x(4)+1; 2*x(3)-x(1)+x(4)+1; x(4)+x(3)-1;]; 

end