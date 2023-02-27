model lab4_3
Real x;
Real y;
Real w = 11.0;
Real g = 1.0;
Real t = time;
initial equation
x = 0;
y = 0;
equation
der(x) = y;
der(y) = -w*x - g*y + 2*cos(t);
end lab4_3;
