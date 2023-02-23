model Lab03_2
Real x;
Real y;
Real a = 0.38;
Real b = 0.73;
Real c = 0.5;
Real d = 0.28;
Real t = time;
initial equation
x = 19300;
y = 39000;
equation
der(x) = -a*x - b*y + sin(2*t) + 1;
der(y) = -c*x*y - d*y + cos(2*t);
end Lab03_2;
