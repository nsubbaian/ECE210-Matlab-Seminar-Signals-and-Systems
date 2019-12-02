%Nithi Subbaian
%MATLAB Assignment 8

%% Question 2 a b c

syms t;
f = t^5*exp(-2*t)*sin(5*t) + t^3*exp(-3*t)*cos(4*t) + t*cos(10*t);
Laplace_transform = laplace(f)

[num, den] = numden(Laplace_transform);
ncoeffs = double(coeffs(num));
dcoeffs = double(coeffs(den));

bode(tf(ncoeffs, dcoeffs))
grid on
%because for bode plots, the x axis is done on a log scale