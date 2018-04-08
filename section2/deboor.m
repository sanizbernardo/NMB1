function y = deboor(t,x,c_given,k)
    y = zeros(length(x),1);
    for i = 1:length(x)
        j = chooseStartKnot(x(i),t,k);
        c = c_given;
        cn = zeros(length(c),1);
        for m = 1:k
            for n = j-k+m:j
                alpha = (x(i) - t(n))/(t(n+k+1-m)-t(n));
                cn(n) = alpha*c(n) + (1-alpha)*c(n-1);
            end
            c = cn;
        end
        y(i) = c(j);
    end
end