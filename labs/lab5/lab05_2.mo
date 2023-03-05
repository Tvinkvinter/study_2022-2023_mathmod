model lab05_2
Real a = 0.19;
Real b = 0.048;
Real c = 0.39;
Real d = 0.036;
Real x;
Real y;
initial equation
x = c / d;
y = a / b;
equation
der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;
end lab05_2;
