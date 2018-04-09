% DEBOOR(t,x,c,k) evaluates the spline function of order k+1 in the given
%   x values, with knots t and coefficients c
% 
% Y = DEBOOR(t,x,c,k) with x a vector of length n returns an y vector of
%   that same length, containing the values of the spline function
%   evaluated in their respective x value
%
% see also CHOOSESTARTKNOT,KKB_SPLINE,BSPLINE_VECTOR
function y = deboor(t,x,c,k)
    y = zeros(length(x),1);
    for i = 1:length(x)
        j = chooseStartKnot(x(i),t,k);
        cprev = c;
        cn = zeros(length(cprev),1);
        for m = 1:k
            for n = j-k+m:j
                alpha = (x(i) - t(n))/(t(n+k+1-m)-t(n));
                cn(n) = alpha*cprev(n) + (1-alpha)*cprev(n-1);
            end
            cprev = cn;
        end
        y(i) = cprev(j);
    end
end