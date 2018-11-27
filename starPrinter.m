function [] = starPrinter(num)
for i=1:num
    for j = 1:i
        fprintf('*')
    end
    fprintf('\n')
    
end

