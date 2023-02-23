model Lab03_1
Real x;
Real y;
Real a = 0.46;
Real b = 0.7;
Real c = 0.82;
Real d = 0.5;
Real t = time;
initial equation
x = 19300;
y = 39000;
equation
der(x) = -a*x - b*y + sin(0.5*t);
der(y) = -c*x - d*y + cos(1.5*t);
end Lab03_1;
