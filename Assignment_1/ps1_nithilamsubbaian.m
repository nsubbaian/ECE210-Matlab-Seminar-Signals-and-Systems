% Nithilam Subbaian MatLab assignment One

%Question 1
a = 5.7 * pi / 6.9;
b = 239 + exp(5) - 2.5*10^(23);
c = log(exp(4.23))* asin(0.7);
z = (3+2j) * (4+5j);

%Question 2
real_z = real(z);
imag_z = imag(z);
magnitude_z = abs(z);
phase_z = angle(z);
complex_z = conj(z);

%Question 3
aVec = [3.14 15 9 26+0.1j];
A2 = repmat(aVec, 1,3);
A1 = horzcat(aVec,aVec,aVec);
bVec = [3.14; 15; 9; 26+0.1j];
bVec2 = aVec.';
cVec = -5:0.1:5;
dVec = linspace(-5, 5, 100);
B = [1+2j 10^(-5); exp((1j)^(2*pi)) 3+4j];
% eye_attempt = eye(1000000);
speye_matrix = speye(1000000);

%question 4
A = magic(5)./65;
B = randn(5);
C = B*A;
D = B.*A;
F = (0.25)*A^3 + (0.25)*A^2 + (1/3)*A + (1/6)*eye(5);
G = inv(A);









