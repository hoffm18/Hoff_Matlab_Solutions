function [output] = woohah(input1,input2)
result = input1 + input2
remainder = rem (result,2);
if remainder == 0
    output = 'Woo'
else 
    output = 'Hah'
end 
    
    
 

end

