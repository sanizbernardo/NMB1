function T = delta_t(t,j,k)
    T = zeros(length(t)-(k+1),k);
    for b = 1:k
        for a = j-b+1:j
            T(a,b) = (t(a+b) - t(a))^-1;
        end
    end
end