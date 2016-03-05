function [c] = pimenu
%menu function asking how to calculate appx of pi
c = menu('Pi Approximations', 'Machin Formula', ...
    'Leibniz Formula with n terms',...
    'Good Leibniz Formula Approximation','Exit');
end

