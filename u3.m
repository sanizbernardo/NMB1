function u = u3(x, y)
u = 0;
if x == 0
    u = 3;
elseif x == 1
    u = 2;
end
if y == 0
    u = 2 + sin(0.5*pi*x);
elseif y == 1
    u = 1;
end
end