% BSPLINE_VECTOR gives the values of all B-splines defined by the knot
% series t, evaluated in all given x
%
% BSPLINE_VECTOR(t,x,k) is an r x n+k matrix with r the length of the
%   vector of x values, n the number of internal knots and k + 1 the order
%
% note: for easy handling of the values produced, the non zero values are
% padded with zeros where needed to get a row of n+k values. None of the
% values that are known to be always zero are evaluated.
function y = evaluate_bspline(t,x,k)
    n = length(t) - 2*k - 1;
    y = zeros(length(x),n+k);
    j = chooseStartKnot(x(1),t,k);
    for a = 1:length(x)
        %checks whether x still lies between previously chosen knots
        if ~(x(a) >= t(j) && x(a) <= t(j+1))
            j = chooseStartKnot(x(a),t,k);
        end
        yn = zeros(1,n+k);
        y(a,j) = 1;
        for b = 1:k
            %upper part of the triangle
            yn(j-b) = ((t(j+1) - x(a))/(t(j+1) - t(j-b+1))) * y(a,j-b+1);
            %middle of the triangle
            for c = j-b+1:j-1
                yn(c) = ((x(a) - t(c))/(t(c+b) - t(c))) * y(a,c) + ...
                    ((t(c+b+1) - x(a))/(t(c+b+1) - t(c+1))) * y(a,c+1);
            end
            %bottom of the triangle
            yn(j) = ((x(a) - t(j))/(t(j+b) - t(j))) * y(a,j);
            y(a,:) = yn;
        end
    end
end