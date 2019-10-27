%{
TB8 Enthalpy Interpolation
V1.0 \\ Anthony Pascual
Developed with Table B.8 in mind.
INSTRUCTIONS \\ Run code in MatLab. Use Table B8.
%}

clc;clear;

x  = input('What is the enthalpy temperature you''re solving for? ');
if isempty(x)
    disp('You can''t have empty values. Try again.')
return
end
x1 = input('What is your x1 value? ');
if isempty(x1)
    disp('You can''t have empty values. Try again.')
return
end
y1 = input('What is your y1 value? ');
if isempty(y1)
    disp('You can''t have empty values. Try again.')
return
end
x2 = input('What is your x2 value? ');
if isempty(x2)
    disp('You can''t have empty values. Try again.')
return
end
y2 = input('What is your y2 value? ');
if isempty(y2)
    disp('You can''t have empty values. Try again.')
return
end

enthalpy = (y1+((x-x1)/(x2-x1))*(y2-y1));

fprintf('Your enthalpy value at %.1f is %.4f.',x, enthalpy)