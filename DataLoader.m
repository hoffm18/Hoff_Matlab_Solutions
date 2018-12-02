function [Time, Position, Torque] = DataLoader()
%This function loads the data from my excel file and outputs the time,
%position, and torque from dynamometer tests


DataForMatlab = xlsread('Data for matlab.xlsx',2,'A1:C9952');
%The excel file must be in the current folder or it will not run


Time=DataForMatlab(:,1);
Position=DataForMatlab(:,2);
Torque=DataForMatlab(:,3);



end