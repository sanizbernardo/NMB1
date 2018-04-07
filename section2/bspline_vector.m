% BSPLINE_VECTOR evaluates all b-splines of order k+1 which are non zero
% in the given x value
%
% also returns the index of the last knot in the knot row which is smaller
% than the given x value
function [y,j] = bspline_vector(t,x,k)
    j = chooseStartKnot(x,t);
    %if((length(t) - j)<k || j+k>length(t))
    %    error('Not enough knots to calculate required degree of spline')
    %end
    y = 1;
    for n = 1:k
        yn = zeros(n+1,1);
        yn(1) = ((t(j+1) - x)/(t(j+1) - t(j-k+1))) * y(1);
        for m = 1:n-1
            yn(m+1) = ((x - t(j-n+m))/(t(j+m-1) - t(j-n+m))) * y(m) + ...
                ((t(j+m+1) - x)/(t(j+m+1) - t(j-n+m+1))) * y(m+1);
        end
        yn(n+1) = ((x - t(j))/(t(j+k) - t(j))) * y(n);
        y = yn;
    end
end