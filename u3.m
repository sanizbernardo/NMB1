function U = u3(X, Y)
len = size(X,1);

U = zeros(len, len);

U(1,:) = 3;
U(len, :) = 2;
U(:,len) = 1;
U(:,1) = 2 + sin(X(len,:).*0.5*pi);
end