model lab08_1
Real p_cr = 20;
Real tau1 = 16;
Real p1 = 13;
Real tau2 = 19;
Real p2 = 11;
Real N = 23;
Real q = 1;

Real a1 = p_cr / (tau1 * tau1 * p1 * p1 * N * q);
Real a2 = p_cr / (tau2 * tau2 * p2 * p2 * N * q);
Real b = p_cr / (tau1 * tau1 * tau2 * tau2 * p1 * p1 * p2 * p2 * N * q);
Real c1 = (p_cr - p1) / (tau1 * p1);
Real c2 = (p_cr - p2) / (tau2 * p2);

Real M1;
Real M2;
initial equation
M1 = 2.5;
M2 = 1.8;
equation
der(M1) = M1 - b / c1 * M1 * M2 - a1 / c1 * M1 * M1;
der(M2) = c2 / c1 * M2 - b / c1 * M1 * M2 - a2 / c1 * M2 * M2;
end lab08_1;
