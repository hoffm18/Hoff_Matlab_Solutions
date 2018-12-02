function [PeakTorque, TimeOfContraction, MeanTorque] = ContractionGuide(ContractionTorque,StartTime, StopTime)
%The inputs for this function are the contraction torque values, as
%assignment by the ginput spots. Also the contraction start and stop times
%as assigned by the ginput picks.

%The peak torque is the maximum torque produced in the ginput selections.

PeakTorque = max(ContractionTorque);

%This line below calculates the time of contraction in seconds dependant
%upon the data points selected by the user. 

TimeOfContraction = (StopTime-StartTime)/100;

%The mean torque is calculated by taking the mean of the contraction
%torque.

MeanTorque = mean(ContractionTorque);




end

