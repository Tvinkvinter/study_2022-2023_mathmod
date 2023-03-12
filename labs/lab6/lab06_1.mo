model lab06_1
Real N = 14000;
Real I;
Real R;
Real S;
Real alpha = 0.5;
Real beta = 0.1;
initial equation
I = 114;
R = 14;
S = N - I - R;
equation
der(S) = 0;
der(I) = -beta*I;
der(R) = beta*I;
end lab06_1;
