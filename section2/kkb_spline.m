function z = kkb_spline(t,x,f,y,k)
    n = length(t) - 2*k - 1;
    M = bspline_vector(t,x,n,k);
    disp(M)
    size(M)
    c = M\f;
    z = deboor(t,x,c,k);
end