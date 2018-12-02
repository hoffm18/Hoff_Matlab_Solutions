%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/michaelhoff/Desktop/Hoff_Matlab_Solutions/Data for matlab.xlsx
%    Worksheet: Page 1
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2018/11/27 11:01:29

%% Import the data
[~, ~, raw] = xlsread('/Users/michaelhoff/Desktop/Hoff_Matlab_Solutions/Data for matlab.xlsx','Page 1');
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
VarName1 = data(:,1);
VarName2 = data(:,2);
VarName3 = data(:,3);

%% Clear temporary variables
clearvars data raw R;