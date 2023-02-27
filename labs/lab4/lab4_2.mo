model lab4_2
Real x;
Real y;
Real w = 10.0;
Real g = 1.0;
Real t = time;
initial equation
x = 0;
y = 0;
equation
der(x) = y;
der(y) = -w*x - g*y;
end lab4_2;
