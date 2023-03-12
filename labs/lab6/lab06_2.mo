model lab06_2
Real N = 14000;
Real I;
Real R;
Real S;
Real alpha = 0.3;
Real beta = 0.05;
initial equation
I = 114;
R = 14;
S = N - I - R;
equation
der(S) = -alpha*S;
der(I) = alpha*S - beta*I;
der(R) = beta*I;
end lab06_2;
