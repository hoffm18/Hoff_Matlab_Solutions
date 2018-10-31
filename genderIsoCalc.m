%the first two results are the male isokinetic means by each individual and
%female isokinetic means by each individual taking over three days.
%The last two means are male and female isokinetic means as a whole


function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
for i = 1:length(Gender)
    if Gender (i,1) == 'M'
        maleIsoIndMeans(i,1) = (Day1(i,1) + Day2(i,1) +Day3(i,1))/3; 
   
    else
        femaleIsoIndMeans(i,1) = (Day1(i,1) + Day2(i,1) +Day3(i,1))/3;
    end
end    

%This function will return the single mean value for each group (mean of
%subjects means)


maleGroupIsoMean = sum(maleIsoIndMeans)/nnz(maleIsoIndMeans);

femaleGroupIsoMean = sum(femaleIsoIndMeans)/nnz(femaleIsoIndMeans);
end



