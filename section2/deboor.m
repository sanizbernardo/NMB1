function y = deboor(t_given,x,c_given,k)
    y = zeros(length(x),1);
    for i = 1:length(x)
        j = chooseStartKnot(x(i),t_given)
        % shortens both vectors to the range that will actually be used for
        % calculation. this is done to make the indices of the vector more 
        % compatible with the numbers used by the loop counter
        c = c_given(j-k:j);
        t = t_given(j-k:j+k);
        for m = 1:k
            cn = zeros(length(c)-1,1);
            for n = 1:length(cn)
                alpha = (x(i) - t(n+m))/(t(n+m+k)-t(n+m));
                cn(n) = alpha*c(n+1) + (1-alpha)*c(n);
            end
            c = cn;
        end
        y(i) = c(1);
    end
end