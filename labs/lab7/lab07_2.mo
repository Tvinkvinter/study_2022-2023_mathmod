model lab07_2
Real N = 810;
Real n;
initial equation
n = 11;
equation
der(n) = (0.000014 + 0.63*n)*(N-n);
end lab07_2;
