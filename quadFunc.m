% quadFunc.m
% Author: Matthew Eleazar
% This function will calculate the 2 roots of a quadratic function with coefficients a,
% b, c and display if the roots are real, complex, or equal.
function [x1,x2,rootType] = quadFunc(a,b,c)
x1 = (-b + sqrt((b^2)-(4*a*c)))/(2*a);
x2 = (-b - sqrt((b^2)-(4*a*c)))/(2*a);

if (b^2)-(4*a*c) > 0
    rootType = "Real roots";
elseif (b^2)-(4*a*c) <0
    rootType = "Complex roots";
elseif (b^2)-(4*a*c) ==0
    rootType = "Equal roots";
end

disp([x1,x2,rootType])
disp(['x1 = ', num2str(x1)])
disp(['x2 = ', num2str(x2)])
disp(['rootType = ', num2str(rootType)])

