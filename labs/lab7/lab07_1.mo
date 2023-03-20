model lab07_1
Real N = 810;
Real n;
initial equation
n = 11;
equation
der(n) = (0.64 + 0.00014*n)*(N-n);
end lab07_1;
