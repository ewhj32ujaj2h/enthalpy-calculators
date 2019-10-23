%{
HEAT ENTHALPY CALCULATOR \\ Form 2
V1.0 \\ Anthony Pascual
Developed with Table B.2 in mind and ♥.
INSTRUCTIONS \\ Run code in MatLab. Use Table B2.
Everything else is converted for you.
%}
clc;clear;
a = input('Let''s calculate some Heat Enthalpy. This is Form 2. Protip: Use Table B2. \nWhat is your ''a'' numerical value? ');
a = a/(10)^3;
b = input('What is your ''b'' numerical value? (Just press "enter" if none.) ');
if isempty(b)
    b = 0;    
end
b = b/(10)^5;
c = input('What is your ''c'' numerical value? (Just press "enter" if none.) ');
if isempty(c)
    c = 0;    
end
c = c/(10)^8;
T1 = input('What is your ''T1'' numerical value? Convert to Kelvin if deemed by the chart. ');
T2 = input('What is your ''T2'' numerical value? Convert to Kelvin if deemed by the chart. ');
syms T
specific_heat = a + (b*T) + (c*(T^-2));
Enthalpy = int(specific_heat, T, T1, T2);
fprintf('Your Heat Enthalpy value is %.3f kJ/mol.\n\n', Enthalpy)
