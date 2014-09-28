function font(fontsize)
% font(fontsize)
%
% Change font size of axes and title of current figure.

set(gca,'fontsize',fontsize);
t = get(gca,'title');
set(t,'fontsize',fontsize);


end
