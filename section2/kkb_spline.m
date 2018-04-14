% KKB_SPLINE(t,x,f,y,k) makes an approximation of the function in the
%   points (x,f) using B-splines of order k+1 and knots, and evaluates in 
%   x values held in vector y
%
% z = kkb_spline(t,x,f,y,k) is a vector with the same length as y,
%   containing the values of the approximation evaluated in their
%   respective x values.
function z = kkb_spline(t,x,f,y,k)
    M = evaluate_bspline(t,x,k);
    if(isrow(f))
        f = f.';
    end
    c = M\f;
    z = deboor(t,y,c,k);
end