function [y,j] = bspline_vector2(x,t,n,k)
    j = chooseStartKnot(x,t,k);
    y = zeros(k+n,1);
    y(j) = 1;
    for m = 1:k
        yn = zeros(k+n,1);
        yn(j-m) = ((t(j+1) - x)/(t(j+1) - t(j-m+1))) * y(j-m+1);
        for i = j-m+1:j-1
            yn(i) = ((x - t(i))/(t(i+m) - t(i))) * y(i) + ...
                ((t(i+m+1) - x)/(t(i+m+1) - t(i+1))) * y(i+1);
        end
        yn(j) = ((x - t(j))/(t(j+m) - t(j))) * y(j);
        y = yn;
    end
end