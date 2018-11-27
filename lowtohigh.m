function [output] = lowtohigh(a,b)
if(b>a)
    disp(a)
    counter = (b-a);
else 
    disp(b)
    counter = (a-b)
end
for i = 1:counter
    a=(a+1)
    disp(a)
end
end

