function something = signchange(xfunc, yfunc)
   
    something = find((yfunc(1:end-1)>0 & yfunc(2:end) < 0) | (yfunc(1:end-1)<0 & yfunc(2:end) > 0) );
 
   
end
