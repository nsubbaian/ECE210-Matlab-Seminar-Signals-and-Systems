function  G = gramSchmidt(twoDarray)
  [m,n] = size(twoDarray);
  R = zeros(m,n); 
  output_matrix = zeros(m,n); 
   for j = 1:n
       v = twoDarray(:,j);
       for i = 1:j-1
           R(i, j)=output_matrix(:,i)'*twoDarray(:,j);
           v=v-R(i, j)*output_matrix(:, i);
       end
       R(j,j)=norm(v);
       output_matrix(:, j)=v/R(j,j);
   end
   G = output_matrix;
   
end