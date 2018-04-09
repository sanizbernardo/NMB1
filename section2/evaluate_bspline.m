% BSPLINE_VECTOR gives the values of all B-splines defined by the knot
% series t, evaluated in all given x
%
% BSPLINE_VECTOR(
%
% note: for efficiency 
function y = evaluate_bspline(t,x,k)
    n = length(t) - 2*k - 1;
    y = zeros(length(x),n+k);
    for a = 1:length(x)
        j = chooseStartKnot(x(a),t,k);
        yn = zeros(1,n+k);
        y(a,j) = 1;
        for b = 1:k
            yn(j-b) = ((t(j+1) - x(a))/(t(j+1) - t(j-b+1))) * y(a,j-b+1);
            for c = j-b+1:j-1
                yn(c) = ((x(a) - t(c))/(t(c+b) - t(c))) * y(a,c) + ...
                    ((t(c+b+1) - x(a))/(t(c+b+1) - t(c+1))) * y(a,c+1);
            end
            yn(j) = ((x(a) - t(j))/(t(j+b) - t(j))) * y(a,j);
            y(a,:) = yn;
        end
    end
end