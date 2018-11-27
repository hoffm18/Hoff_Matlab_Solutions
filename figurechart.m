function [fig] = figurechart(v1,v2)

plot (v1)
hold on
plot (v2)

title(input('Please enter a title: ','s'));
xlabel('X')
ylabel('Y')
hold off
end

