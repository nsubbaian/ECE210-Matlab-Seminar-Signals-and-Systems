% Nithilam Subbaian ps3


%Question 1
A = ones(100);
B = zeros(100);
ax = 1:1:100;
ay = 1:1:100;
[aX,aY] = meshgrid(ax,ay);
[row,col] = find(sqrt(  (aX-50).^2 + (aY-50).^2  ) < 20);
ind = sub2ind(size(A),row,col);
A(ind) = 0;

bx = 1:1:100;
by = 1:1:100;
[bX,bY] = meshgrid(bx,by);
[row,col] = find(sqrt(  (bX-40).^2 + (bY-40).^2  ) < 20);
ind = sub2ind(size(B),row,col);
B(ind) = 1;


figure; imshow(A); 
%This produces an image with a black circle on a white background.
figure; imshow(B); 
%This produces an image with a white circle on a black background.
figure; imshow(A&B);
%This produces an image in which its white where image A and image B are
%white, and black elsewhere.
figure; imshow(A|B);
%This produces an image in which its black where image A and image B are
%lack, and white elsewhere.
figure; imshow(not(A&B));
%This produces an image with inverted colors of the image produces by
%imshow(A&B).
figure; imshow(not(A|B));
% This produces an image with inverted colors of the image produced by
% imshow(A|B).


%Question 2

findClosest( sin(linspace(0, 5, 100))+1  , 3/2);


%Question 3

x = linspace(-2 * pi, 2 * pi, 10001);
%yfunction = @(x)sinc(x)
y = sinc(x);
plot(x,y)
grid
hold on
something = signchange(x,y);
 xRoots = x(something);
 yRoots = y(something);
 plot(xRoots, yRoots, 'ko')
    
df = diff(y)./diff(x);
somethingtwo = signchange(x,df);
 xMinMax = x(somethingtwo);
 yMinMax = y(somethingtwo);
 plot(xMinMax, yMinMax, 'r*')
hold off
