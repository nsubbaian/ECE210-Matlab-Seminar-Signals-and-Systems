%Nithilam Subbaian
%Matlab Assignment 6

%Question 1
b = [3/7 2/3 1/2];
a = [1/2 0 1/3 2];
[z,p,k] = tf2zp(b,a);

zplane(z,p)
title('Pole Zero Plot') 

figure;
impz(b,a, 50)
figure;
[h, k] = impz(b,a, 50);

subplot(2,1,1);
n = 0:49;
x = (-1/2).^n;
y = filter(b,a,x);
stem(y)
title('Filter with Digital Filter and x');

subplot(2,1,2);
y2 = conv(x,h1);
stem(y2)
title('Convolution between x and h (the impulse response)');
xlim([0 50]);


%Question 2
% The difference equation is y[n] = x[n] + y[n-1] + y[n-2] 
x1 = zeros(1, 100); 
x1(1:2) = 1; 
for i = 3:100 
    x1(i) = x1(i-1) + x1(i-2); 
end 
figure 
semilogy(0:99, x1, '.') 
title('First 100 values of Fibonacci Sequence') 
xlabel('n') 
ylabel('Fibonacci Number') 

%{
Z transform function determined by the transfer function:
H(z) = (z^2)/(z^2-z-1) 
(do usual procedure to find transfer function, and then multiply by z^2 in
numerator and denominator to get the form shown above)

Calculation of poles and zeros by hand:
Zeros = 0 (multiplicity = 2)
Poles = 1/2 +/- sqrt(5)/2 
%}

b1 = [1 0 0]; 
a1 = [1 -1 -1]; 
[z1,p1,k1] = tf2zp(b1, a1); 
figure;
zplane(z1, p1) 
title('Pole Zero Plot for Fibonacci') 
 
%{
The system is causal because the outer region of convergence contains infinity.
You can also determine that the system is causal because for the difference
equation, the present output depends on past and present input only.

The system is not stable in the outer region of convergence containing infinity
because that region does not contain unit circle.
It is a stable system if and only if the ROC includes the unit circle.
You can also determine that the system is not stable because for the difference
equation, a bounded input gives an unbounded output. 
%}
