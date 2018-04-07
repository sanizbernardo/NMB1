function z = kkb_spline(t,x,f,y,k)
    
    for n = 1:length(x)
        row,j = bspline_vector(t,x(n),k);
    end
end