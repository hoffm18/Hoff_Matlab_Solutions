%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Assignment 1: Matlab Scavenger Hunt and HelloWorld
%
% Submitted by: Mike Hoff
%
% Due: September 6, 2018
%
% Instructions: 

% There are two parts to this assignment. Part 1 deals with using the
% Matlab documentation to answer some questions or perform some tasks. Part
% 2 involves you writing your very first Matlab program!!

% Please write all of your responses in the following .mfile.
% If there are comments after the question (as in question 2) please 
% write your answer inside those comments. If there are not comments
% please write your answer with correct matlab syntax. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%% Part 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Set the url of the matlab documentation to a variable called helpURL
helpURL='https://www.mathworks.com';web('https://www.mathworks.com/help/')


% 2. What does the command 'clear all' do?
%
% Answer: Clear all clears your workspace, closes all firgures, and clears
% the command window.
%


% 3. What function would you use to take the average of the following
% numbers [1 7 21 32 67 32453]? Store your answer in a variable called
% averageAnswer.
A=[1 7 21 32 67 32453]
averageAnswer = mean(A)


% 4. What command would you type to see a list of all installed toolboxes?
ver


% 5. What command would return a list of all of the available functions in 
% the image processing toolbox? 
help images


% 6. On the line below figure, write a command to draw a graph of 
% x and y. 

x = linspace(-2*pi,2*pi);
y = sin(x);

figure
        plot(x,y)

        

% 7. Find a function that performs a statistical test you've seen used
% in a journal article (there are many possible answers to this). 


% Answer: An example would be a Kolmogrov-Smirnov test (kstest).


% 8. What are the 2 major types of loops that MATLAB supports? What is the
% difference between them?

%
% Answer: There are "for" statements and "while" statements. For statements
% loop a specific amount of times and keep track of each iteration,while
% "while" statements loop as long as a condition remains true.
% 


% 9. What does NaN stand for? Give an example of when you would get NaN as
% an answer. 

%
% Answer: NaN stands for the expression "not a number" . An example would
% be 0*Inf.
%


% 10. The following code snippet executes but contains an error (we don't
% get a useful answer). See if you can use the documentation to fix the 
% error to get the sum of the numbers in A. Do not change or remove 
% any of the values in A.

A = [1 2 3 2 1 NaN 1 2 3 NaN];
S = sum(A)
A=[1 2 3 3 2 1 NaN 1 2 3 NaN]
S=nansum(A)



% 11. I used to love playing the game minesweeper. Is there a way that I
% could play a similar game on Matlab? Write the command that would launch
% the game if so. 
xpbombs



% 12. What happens if you type why and hit enter in the command window?
% Repeat this a few times and copy your result below (Make sure everything
% is commented out).

%
% Answer: The bald and not excessively bald and not excessively smart hamster obeyed a terrified and not excessively terrified hamster.
%why
%To fool the tall good and smart system manager.
%why
%The rich rich and tall and good system manager suggested it.
%why
%He wanted it that way.
%why
%The programmer suggested it.
%why
%Mara suggested it.
%why
%To please a very terrified and smart and tall engineer.

%


%%%%%%%%%%%%%%%%%%%%%%%%%%  Part 2: Hello World %%%%%%%%%%%%%%%%%%%%%%%%%%

% Write some code that will print the string 'Hello World' to the screen. 
% There are several ways that you could do this. For an extra challenge, 
% make your program able to take text input from the user and output 
% whatever they input. (For ease of running and executing your solution,
% you should comment all the lines of code from Part 1. Just make sure you
% remove the comments before you submit.) 

%%% Enter the code for your program below this line

disp('Hello World')





%%%%% When you have completed everything, type the following two commands
%%%%% (without comments) into your command window. 

%%% load handel
%%% sound(y, Fs)