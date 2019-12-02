%Nithilam Subbaian
%Problem set 4

%Question 1
A = [ 2 1;
      2 1;
      1 5  ];

Gram_Schmidt = gramSchmidt(A);
isOrthonormal(Gram_Schmidt);
vector = [0, 1, 0];
orthoproj(vector,Gram_Schmidt);

more_elements = rand(5,2);
equal_vectorstoelements = rand(3, 3);

gramSchmidt(more_elements);
gramSchmidt(equal_vectorstoelements);
isOrthonormal(more_elements);
isOrthonormal(equal_vectorstoelements);  %error is greater when there are more elements in each vector than the number of vectors  

vector_2 = [1,2,3,4,5];
orthoproj(vector_2, more_elements);
orthoproj(vector, equal_vectorstoelements);


x = linspace(0, 2 * pi, 100);
y = sin(x);
gauss = gaussplot(x, [0, pi/2, pi, 3*pi/2, 2*pi]); %gaussPlot(x,mu)
plot(x,y, x, gauss)
xlim([0 6])
xlabel('X')
ylabel('Gauss Plot against Blue colored Sine Function')
title('Gauss Plot against Blue colored Sine Function')

figure; 
orthonormalset_fromgaussian= gramSchmidt(gauss);
approximate_sinusoid = orthoproj(y,orthonormalset_fromgaussian);
subplot(2,1,1)
plot(x, y, x, approximate_sinusoid)
xlabel('X')
ylabel('Sinusoid and Gaussian')
title('Sinusoid and Gaussian')


subplot(2,1,2)
plot(x, y, x, orthonormalset_fromgaussian)
xlabel('X')
ylabel('Orthonormal Basis Functions')
title('Orthonormal Basis Functions')


