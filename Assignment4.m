clear all
%imported the file
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv');
%the first two results are the male isokinetic means by each individual and
%female isokinetic means by each individual taking over three days.
%The last two means are male and female isokinetic means as a whole
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender, Day1, Day2, Day3);
%
day1toDay2 = dayComparator(SubjectID,Day1,Day2);
day2toDay3 = dayComparator(SubjectID,Day2,Day3);

%Isokinetic data taking on three different days is divided by the weight 
%of the person.
normDay1mean = Day1./Weight
normDay2mean = Day2./Weight
normDay3mean = Day3./Weight

%This code allows the dimensions to all be equal (25X1)
maleGroupIsoMeanMatrix = zeros(25,1);
maleGroupIsoMeanMatrix(1,1) = maleGroupIsoMean;
femaleGroupIsoMeanMatrix = zeros(25,1);
femaleGroupIsoMeanMatrix(1,1) = femaleGroupIsoMean;
femaleIsoIndMeans (23:25,1) = 0;
day1toDay2(23:25,1) = 0;
day2toDay3(23:25,1) = 0;
IMDONE = [day1toDay2, day2toDay3, femaleGroupIsoMeanMatrix, maleGroupIsoMeanMatrix, maleIsoIndMeans, femaleIsoIndMeans, normDay1mean,normDay2mean,normDay3mean]
csvwrite('iso_results.csv', IMDONE)
    