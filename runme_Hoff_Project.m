%This code will allow the user to import data from an excel file.
%Whichever file the user plans to run needs to be in the current folder.
%The three calculations this code calculates is the contraction peak
%torque, contraction torque mean, and the contraction length in seconds.
%This code is especially useful for dynamometer data. Depending on how many
%contractions were in the data, adjust the ginput accordingly. You need 2
%ginputs for every contraction in the data. The code will export the
%results into an excel file with the three column headers separating the
%data. 





%This line calls in the use of the function (DataLoader)

[Time, Position, Torque] = DataLoader();

%this sets the variable in case the user is not satisfied with their ginput
%placements. If the user selects no, the code will rerun and allow the user
%to reselect their points. 

SatisfiedAnswer = 'No';



while strcmp(SatisfiedAnswer,'No')
    close all
    
%Plots the Isokinetic graph from excel
%Maximizes the figure to fit the computer screen

figure('units','normalized','outerposition',[0 0 1 1])
hold on
plot(Torque)




%Use the cross hairs and click on the start and stop points of each
%contraction. This specific code has 7 contractions, adjust the amount of
%inputs to fit your data. 

hold on
%This for loop allows the user to see a red mark where their ginput went
%onto the graph. This will be followed up by an input asking the user if
%they are happy with their ginput placements, or if they would like to redo
%their ginput placements.

for i = 1:14
    ContractionStartStop(i,:) = round(ginput(1));
    scatter(ContractionStartStop(i,1),ContractionStartStop(i,2),'r')
end

SatisfiedAnswer = questdlg('Are you happy with your results?', ...
	'Satisfied?', ...
	'Yes','No','Yes');
end

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the first contraction in the data.

Contraction1Start = ContractionStartStop(1,1);
Contraction1Stop = ContractionStartStop(2,1);
Contraction1Torques = Torque(Contraction1Start:Contraction1Stop);
[ContractionPeakTorques(1), ContractionLengths(1), ContractionMeanTorques(1)] = ContractionGuide(Contraction1Torques,Contraction1Start, Contraction1Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the second contraction in the data.

Contraction2Start = ContractionStartStop(3,1);
Contraction2Stop = ContractionStartStop(4,1);
Contraction2Torques = Torque(Contraction2Start:Contraction2Stop);
[ContractionPeakTorques(2), ContractionLengths(2), ContractionMeanTorques(2)] = ContractionGuide(Contraction2Torques,Contraction2Start, Contraction2Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the third contraction in the data.

Contraction3Start = ContractionStartStop(5,1);
Contraction3Stop = ContractionStartStop(6,1);
Contraction3Torques = Torque(Contraction3Start:Contraction3Stop);
[ContractionPeakTorques(3), ContractionLengths(3), ContractionMeanTorques(3)] = ContractionGuide(Contraction3Torques,Contraction3Start, Contraction3Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the fourth contraction in the data.

Contraction4Start = ContractionStartStop(7,1);
Contraction4Stop = ContractionStartStop(8,1);
Contraction4Torques = Torque(Contraction4Start:Contraction4Stop);
[ContractionPeakTorques(4), ContractionLengths(4), ContractionMeanTorques(4)] = ContractionGuide(Contraction4Torques,Contraction4Start, Contraction4Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the fifth contraction in the data.

Contraction5Start = ContractionStartStop(9,1);
Contraction5Stop = ContractionStartStop(10,1);
Contraction5Torques = Torque(Contraction5Start:Contraction5Stop);
[ContractionPeakTorques(5), ContractionLengths(5), ContractionMeanTorques(5)] = ContractionGuide(Contraction5Torques,Contraction5Start, Contraction5Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the sixth contraction in the data.

Contraction6Start = ContractionStartStop(11,1);
Contraction6Stop = ContractionStartStop(12,1);
Contraction6Torques = Torque(Contraction6Start:Contraction6Stop);
[ContractionPeakTorques(6), ContractionLengths(6), ContractionMeanTorques(6)] = ContractionGuide(Contraction6Torques,Contraction6Start, Contraction6Stop);

%This series will calculate the contraction peak torque produced,
%contraction time length in seconds, and the mean torque produced by the
%contraction of the seventh contraction in the data.

Contraction7Start = ContractionStartStop(13,1);
Contraction7Stop = ContractionStartStop(14,1);
Contraction7Torques = Torque(Contraction7Start:Contraction7Stop);
[ContractionPeakTorques(7), ContractionLengths(7), ContractionMeanTorques(7)] = ContractionGuide(Contraction7Torques,Contraction7Start, Contraction7Stop);
 
%This code transposes the variables. Makes the data go into columns under
%their column name

ContractionPeakTorques = ContractionPeakTorques';
ContractionLengths = ContractionLengths';
ContractionMeanTorques = ContractionMeanTorques';

%This code puts the three columns into a table. Ultimately, exporting them
%into an excel file as a table with the column headers.

dataTable = table(ContractionPeakTorques, ContractionLengths, ContractionMeanTorques);
writetable(dataTable,'Hoff_Final_Project_Data.csv');


