model lab4_1
Real x;
Real y;
Real w = 1.5;
Real g = 0.0;
Real t = time;
initial equation
x = 0;
y = 0;
equation
der(x) = y;
der(y) = -w*x - g*y;
end lab4_1;
