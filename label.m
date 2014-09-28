function label(xlab, ylab, fsize)
% label(xlab, ylab, fsize)
%
% Quicky label axes.
%
% Andreas Mavrommatis 2014.

    if nargin < 3
        fsize = 14;
    end

    xlabel(xlab, 'fontsize', fsize)
    ylabel(ylab, 'fontsize', fsize)

    set(gca, 'fontsize', fsize);
    box on

end
