model lab07_3
Real N = 810;
Real n;
initial equation
n = 11;
equation
der(n) = (0.7 + 0.4*cos(time)*n)*(N-n);
end lab07_3;
