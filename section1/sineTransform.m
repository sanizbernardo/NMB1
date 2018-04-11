function Fs = sineTransform(F)
% Er is geen beter manier om dit te doen
Fs = dst(dst(F).').';
end