% BSPLINE_VECTOR evaluates all b-splines of order k+1 which are non zero
% in the given x value
%
% also returns the index of the last knot in the knot row which is smaller
% than the given x value
function [y,j] = bspline_vector(t,x,n,k)
    if length(x)~=1
        y = zeros(length(x),n+k);
        for i = 1:length(x)
            y(i,:) = bspline_vector(t,x(i),n,k);
        end
    else
        j = chooseStartKnot(x,t,k);
        y = zeros(k+n,1);
        yn = y;
        y(j) = 1;
        for m = 1:k
            yn(j-m) = ((t(j+1) - x)/(t(j+1) - t(j-m+1))) * y(j-m+1);
            for i = j-m+1:j-1
                yn(i) = ((x - t(i))/(t(i+m) - t(i))) * y(i) + ...
                    ((t(i+m+1) - x)/(t(i+m+1) - t(i+1))) * y(i+1);
            end
            yn(j) = ((x - t(j))/(t(j+m) - t(j))) * y(j);
            y = yn;
        end
    end
end