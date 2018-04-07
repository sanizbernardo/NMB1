% CHOOSESTARTKNOT finds the index of the rightmost knot smaller than x
% so that t(i) < t(i+1) and t(i) <= x <= t(i+1)
%
% t := vector to search
% 
% x := scalar value to search for
function i = chooseStartKnot(x,t)
    if(t(length(t)) < x)
        error("x is larger than all elements in t")
    elseif(t(1) > x)
        error("x is smaller than all elements in t")
    else
        for i = 1:length(t)
            if(t(i) <= x)
                if(t(i) < t(i+1) && t(i+1) > x)
                    break
                end
            end
            
        end
    end
end