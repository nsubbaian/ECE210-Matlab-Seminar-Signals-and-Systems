function y = isOrthonormal(twoD_array)
   Q = twoD_array;
   r = rank(Q);
   E = norm(eye(r)-Q'*Q,'fro');
   fudge = 2;
   if E < eps*fudge
         result = 'Array is orthonormal';
         error = E;
   else
       result = 'Array is not orthonormal';
       error = E;
   end
   y = fprintf('%s with error %i\n', result, error);

end