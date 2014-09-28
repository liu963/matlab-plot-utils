function h = colorbartitle(title, labelx, fontsize)
% h = colorbartitle(title, [labelx], [fontsize])
%
% Display colorbar with a title (label) on the side.
%
% Inputs:
%  title = colorbar label (string)
%  labelx = set to 1 to place the label on the top instead of the side
%
% Andreas Mavrommatis 2013

h = colorbar;
if nargin < 2
    set(get(h,'ylabel'),'String', title);
elseif nargin < 3
    if labelx
        set(get(h,'xlabel'),'String', title);
    else
        set(get(h,'ylabel'),'String', title);
    end
else
    if labelx
        set(get(h,'xlabel'),'String', title, 'fontsize', fontsize);
    else
        set(get(h,'ylabel'),'String', title, 'fontsize', fontsize);
    end
end
