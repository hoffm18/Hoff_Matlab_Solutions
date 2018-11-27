function [output] = timeConverter(years,units)

sec = 'seconds'
min = 'minutes'
if nargin==1
    michael = years*365;
    str=num2str(michael)
     output = strcat(str,'days');
    %fprintf('%d days', output);
    %display units of years
elseif nargin==2
    if strcmp(units, 'seconds')
    days = years*365;
    michael = days*86400;
    str=num2str(michael);
    output = strcat(str,' seconds');
    elseif strcmp(units,min)==1
        strcmp (units, 'minutes')
        days = years*365
        michael = days*1440
        str = num2str(michael);
        output = strcat(str,' minutes')
    %display unites of seconds
    end
end 
    


end


