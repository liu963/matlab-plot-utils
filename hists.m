function hists(D,C,N)
% function hists(D,C,N)
%
% Plots multiple histograms on the same plot. Histogram colors are
% semi-transparent, so that they can be overlapping. 
%
% This version assumes that data sets have the same length.
%
% Inputs:
%   D   = data matrix, where each *column* is a data vector
%   C   = cell array of colors, e.g., {'r', 'b', 'y'}
%   [N] = number of bins for the histograms [default is 10]
%
% Example:
%
% D1 = randn(10000,1);
% D2 = randn(10000,1) + 1;
% D3 = randn(10000,1) + 2;
% D = [D1 D2 D3];
% figure
% hists(D,{'r','b','y'},30)
%
% Andreas Mavrommatis 2014.

if nargin < 3
    N = 10;
end

hold on

% Plot histograms as bar graphs
for i = 1:size(D,2)
    [F,X] = hist(D(:,i),N);
    bar(X,F,1);
end

% Now color them
h = findobj(gca,'Type','patch');
for i = 1:size(D,2)
    k = size(D,2) - i + 1;  % for some reason MATLAB reverses the order...
    set(h(i),'FaceColor',C{k},'EdgeColor',C{k}, 'facealpha', 0.5);
end
