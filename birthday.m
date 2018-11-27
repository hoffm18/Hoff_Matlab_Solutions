function [age,daysTill] = birthday(month,day,year)
bd = datetime(year,month,day);
today = datetime('now');
age = between(bd, today, 'years');

nextbd = bd+age+calyears(1);
daysTill= between(today,nextbd, 'days');
end

