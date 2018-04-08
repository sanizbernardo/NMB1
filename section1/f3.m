function F = f3(X, Y)
len = size(X, 1);

F = ones(len, len)*(-100);

for i= 1:len
    if (0.4>X(i,i)||X(i,i)>0.6)&&(0.4>Y(i,i)||Y(i,i)>0.6)
        F(i,:) = 0;
        F(:,i) = 0;
    end
end
end