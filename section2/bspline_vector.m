function y = bspline_vector(t,x,k)
    j = chooseStartKnot(x,t);
    y = [1];
    for n = 2:k+1
        yn = zeros(n,1);
    end
end