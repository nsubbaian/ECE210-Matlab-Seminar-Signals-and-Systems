% Nithilam Subbaian ps2

%Question 1
x = linspace(0,1);
y = exp(x);
fun = @(x)exp(x);
spacing = diff(x);
trapz_integral = trapz(x, y);
rect_integral = integral(fun, 0, 1);
trapz_integral_withintervalmultiplication = trapz(x, y)*spacing(1);
rect_integral_withintervalmultiplication = integral(fun, 0, 1)*spacing(1);
cumulative_integral = cumtrapz(x, y)* (spacing(1));
cumulative_rectangle = cumsum(y)*(spacing(1));
approx_derivative = diff(y)./diff(x);
spacing_2=diff(x).^ 2;
approx_second_derivative = diff(y,2)/spacing_2(1);
first_derivativelength = length(approx_derivative);
second_derivativelength = length(approx_second_derivative);
bVec = [0 1 2 3 4 5];
cVec = circshift(bVec, 3);

%Question 2
dVec= 1:100;
A_prea = reshape(dVec, [10, 10]);
B = magic(10);
C = diag(B);
C_diagonal= diag(C);
B_secondcolumnflipped = flipud(B(:,2));
A_lefttorightflip = fliplr(A_prea);
cSum = sum(A_prea*B);
cMean = mean(A_prea.*B,2);
A_prea(1,:) = [];

%Question 3
tic
for i=1:1:300
for j=1:1:500
    A_nopreallocation(i,j) = (i^2 + j^2)/(i + j + 3);
end
end
forloops_without_preallocation=toc;

tic
A_preallocation = zeros(300,500);
for i=1:1:300
for j=1:1:500
A_preallocation(i,j) =(i^2 + j^2)/(i + j + 3);
end
end
forloops_with_preallocation=toc;

tic
x = 1:1:300;
y = 1:1:500;
[X,Y] = meshgrid(y,x);
F = (X.^2 + Y.^2)./(X + Y+ 3);
elementwise_matrix_operation=toc;

T = table(forloops_without_preallocation, forloops_with_preallocation, elementwise_matrix_operation)

