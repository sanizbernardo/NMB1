% CHOOSESTARTKNOT finds the index of the rightmost knot smaller than x
% so that t(i) < t(i+1) and t(i) <= x <= t(i+1)
%
% CHOOSESTARTKNOT(x,t) is the index of that t
%
% t := vector to search
% 
% x := scalar value to search for
%
% k := order of the spline
function i = chooseStartKnot(x,t,k)
    if(t(length(t)) < x)
        error('x is larger than all elements in t')
    elseif(t(k+1) > x)
        error('x is too small to be drawn')
    else
        for i = k+1:length(t)
            if(t(i) <= x && t(i+1) > x)
                break
            elseif(t(i) < x && t(i+1) >= x)
                break
            end
        end
    end
end