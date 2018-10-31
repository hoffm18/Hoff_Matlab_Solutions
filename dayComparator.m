%This function allows the user to see who had an increase from the 1st day
%to the second day, and the second day to the third day

function [day1toDay2] = dayComparator(SubjectID,Day1,Day2)
for i = 1:length(SubjectID)
    if Day1(i,1) < Day2(i,1)
        day1toDay2(i,1) = SubjectID(i,1)
    end
end

