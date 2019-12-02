function [val, ind]= findClosest(x, desiredValue)
     y = x(:);
     difference_matrix = abs(y - desiredValue);
     smallest_difference = min(abs(y - desiredValue));
    ind = find(difference_matrix == smallest_difference)
    val = y(ind)   


end
