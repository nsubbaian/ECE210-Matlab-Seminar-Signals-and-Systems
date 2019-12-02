function  y = orthoproj(vector, orthonormal_vectors)
    A = vector;
    k =1;
    result = 0;
    for B = orthonormal_vectors(:,k)
    C =(dot(A,B)/norm(B)^2)*B;
    result = result +C;
    k = k +1;
    end
    y = result;
end