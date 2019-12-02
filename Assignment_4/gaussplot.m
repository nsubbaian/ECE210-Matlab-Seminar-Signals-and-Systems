function  W = gaussplot(x_arrayy, mu_arrayy)
    [m1, n1] = size(x_arrayy);
    [m2, n2] = size(mu_arrayy);
    sigma= 1;
  W = zeros(n1, n2);
   for row = 1:1: n1
       x = x_arrayy(1,row);
       for column = 1 :1: n2
           mu = mu_arrayy(1,column);
        W(row, column)= (1/sqrt(2*pi*sigma^2))*exp(-(x-mu).^2/(2*sigma^2));
       end
   end
end