%Nithi Subbaian
%MATLAB Assignment 8

%% Question 1a

s = rand(100000,1);
for i = 1:100000
    x(i) = 1;
    if s(i)<= 0.268
        x(i) = -1;
    end    
end

%% Question 1b
awgn1 = x' + sqrt(100000*10^(-7/10))*randn(100000,1); 
awgn2 = x' + sqrt(100000*10^(3/10))*randn(100000,1);    

%% Question 1c
figure
subplot(3,1,1)
histogram(x,  'Normalization', 'probability') % gives relative probability, vi = ci/N
title('BPSK Signal')
subplot(3,1,2)
histogram(awgn1,50, 'Normalization', 'probability')
title('Additive White Noise Signal 1 with SNR 7 dB')
subplot(3,1,3)
histogram(awgn2,50, 'Normalization', 'probability')
title('Additive White Noise Signal 2 with SNR -3 dB')

%% Question 1d and e

% for first additive white noise
for i = 1:100000
    conversion_1(i) = 1;
    if awgn1(i)< 0
        conversion_1(i) = -1;
    end    
end

errors_1 = 0;
for i = 1:100000
    if(conversion_1(i) ~= x(i))
        errors_1 = errors_1 + 1;
    end       
end

% for second additive white noise
for i = 1:100000
    conversion_2(i) = 1;
    if awgn2(i)< 0
        conversion_2(i) = -1;
    end    
end

errors_2 = 0;
for i = 1:100000
    if(conversion_2(i) ~= x(i))
        errors_2 = errors_2 + 1;
    end       
end

BER_1 = errors_1/100000;
tBER_1 = sum(qfunc(conversion_1))/100000;
BER_2 = errors_2/100000;
tBER_2 = sum(qfunc(conversion_2))/100000;

%% Question 2a --- run this section on its own

r = rand(50,1);
walk(1) = 0;
for i = 2:50
    if r(i) <= 0.5
        walk(i) = walk(i - 1)-1;
    end    
    
    if r(i) > 0.5
        walk(i) = walk(i - 1)+1;
    end
end

% Question 2b
figure
subplot(2,1,1)
plot(1:50, walk)
title('Random Walks with 50% chance')

% Question 2c
walk_2(1) = 0;
for i = 2:50
    if r(i) <= 0.25
        walk_2(i) = walk_2(i - 1)-1;
    end    
    
    if r(i) > 0.25
        walk_2(i) = walk_2(i - 1)+1;
    end
end

subplot(2,1,2)
plot(1:50, walk_2)
title('Random Walks with 75% and 25%')
% the sample size is not high so the output varies every time the program
% is run, however the second graph has an increased tendency to be
% increasing. In fact the first graph often decreases.

%% Question 2d: 
%In the Z- domain, this is represented as multiplication of the z-transform
%of their pmfs.


