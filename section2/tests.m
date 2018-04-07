k = 4;
A = zeros(k+1);
i = 0;
for n = 1:k+1
    for m = k+1:-1:k+2-n
        i = i + 1;
        A(m,n) = i;
    end
end
A