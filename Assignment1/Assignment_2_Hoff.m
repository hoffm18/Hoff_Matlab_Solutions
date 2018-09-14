%Michael Hoff
%September 13th
%This assignment is exercises from chapters 1-3 in our textbook

%%Chapter 1 Exercises

%1.)
Copper=63.55

%2.)

myage=22
myage-2
myage+1

%3.)
namelengthmax
%63

%4.)
P=4
O=64
who
whos
clear P
who
whos

%5.)
intmin('uint32')
intmax('uint32')
intmin('uint64')
intmax('uint64')
%6.)
dec=.500
deci = int32(dec);

%11.)
pounds=10
kilos = pounds/2.2

%12.)
ftemp=50
ctemp = (ftemp-32)*5/9

%13.)
cent=10
inch = cent/2.54

%14.)
sind(90)


%15.)
r1=5
r2=10
r3=15
rt = 1/((1/5)+(1/10)+(1/15))





%22.)
%Uppercase letters come before lowercase letters. 

%24.) 1,1,1,0
'b' >= 'c' - 1
3 == 2 + 1
(3 == 2) + 1
xor(5 < 6, 8 > 4)

%25.)
x >= 4
y < 10

%26.)
3*10^5 == 3e5

%27.)
log10(10000) == 4

%%Chapter 2 Exercises

%1.)
vec = 2:7
nv = 1.1:.2:1.7
nv = 8:-2:2

%2.)
vec = linspace(0,2*pi,50)

%3.)
A = linspace(2,.2,3)

%4.)
vec = -5:-1
nv = 5:2:9
nv = 8:-2:4
ls = linspace(-5,-1,5)
ls = linspace(5,9,3)
ls = linspace(8,4,3)

%6.)
ro = -1:.5:1
co = ro'

%7.)
vec = 10:20
vec(2:2:end)

%8.)
mat = [7:10; 12:-2:6]
mat(1,3)
mat(2,:)
mat(:,1:2)

%9.)
mat = [2:5; 3:6]
numel(mat)

%10.)
mat = [2:5; 3:6]
mat(1,:) = 1:4
mat(:,3) = [9 2]'

%12.)
rows = randi([1,5])
cols = randi([1,5])
zeros(3)

%23.)
nv = 3:2:11
sum(nv)

%26.)
sum1 = 3:2:9
sum2 = 1:4
sum(sum1./sum2)

%30.)
mat = randi([-10,10], 1, 5)
mat= mat-3
sum(mat(:) >= 0)
y = abs(mat)
z = max(mat)

%31.)
mat = [1:5; 6:10; 11:15]
B = max(mat)

%%Chapter 3 Exercises

%1.)
%I assigned the ro variable to 5
%I assigned the ri variable to 2
%I then subsituted the variables for the numbers and used the equation
%listed below to solve for the answer.
%the volume is v=87.96

v = 4*pi/3*(5^2-2^2)

%4.)
mat = input('Enter a matrix: ')

%6.)
realnum = 12345.6789
fprintf('The number is %f\n', realnum)
fprintf('The number is %10.4f\n', realnum)
fprintf('The number is %10.2f\n', realnum)
fprintf('The number is %6.4f\n', realnum)
fprintf('The number is %2.4f\n', realnum)


%8.)
%flowrate
%Enter the flow in m^3/s: 15.2
%A flow rate of 15.2 meters per sec 
%is equivalent to 542.856 feet per sec
cubicMpersec = input ('enter the flow in m^3/s :');
cubicFpersec = cubicMpersec / .028;
fprintf('A flow rate of %.3f meters per sec\n', ...
    cubicMpersec)
fprintf('is equivalent to %.3 feet per second\n', ... 
    cubicFpersec)

%13.)

 l = input('Input the l value: ');
 y = input('Input the y value: ');
 z = input('Input the z value: ');
 p = [l y z] / sqrt(l^2 + y^2 + z^2)




















