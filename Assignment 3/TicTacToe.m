%Michael Hoff, 10/15/18
%This program allows the user to play a game of TicTacToe against a
%computer. The rules are simple: get three X's in a row to win the game.
%When entering your next move, please use the brackets with your row and
%column separated by a comma (EX. [1,1]


%I tried my best, but my code will not restart once a game finishes. It
%will prompt for the user to play the game again, but it wont restart the
%game :(

% it also says invalid move to the user after the 1st move, even though it
% is not invalid. 
clear all
clc
close all
gameboard = zeros(3,3);
disp(' Welcome to Tic Tac Toe, would you like to play a game?')
answer = input(' Enter yes or no: ', 's');
playQuestion = true;
while (playQuestion)
    if(strcmp( 'yes', answer))
        clear all 
        clc
        close all
        gameboard = zeros(3,3);
        disp(gameboard)
        disp(' please use the brackets and then enter a row and column') 
        figure
        plot([.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
        hold on
        plot([.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
        plot([1.5 1.5],[-.5 -3.5], 'k','linewidth',2)
        plot([2.5 2.5],[-.5 -3.5], 'k','linewidth',2)
        hold off
        axis off
        playQuestion = false;
        % Obtain first move   
        move = input('enter human move [r,c] ');
        r = move(1)
        c = move(2)
        %check for unoccupied spot
        freespot = true;
        while (freespot)
            if (r < 1 || r > 3 || c < 1 || c > 3)
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
                
            elseif gameboard (r,c) == 0
                gameboard(r,c) = 1;
                text(c,-r,'X','horizontalalignment','center','fontsize',20)
                freespot = false;
                
            elseif gameboard(r,c) ~= 0
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
            end
        end 
        
        %Computer's first move
        CPfirstmove = true;
        while (CPfirstmove)
            cpRowmove = randi([1 3],1);
            cpColmove = randi([1 3],1);
            if gameboard(cpRowmove,cpColmove) == 0
                gameboard(cpRowmove,cpColmove) = -1
                text(cpColmove,-cpRowmove,'O','horizontalalignment','center','fontsize',20)
                CPfirstmove= false;
            end 
        end
       
        %Player's 2nd move
        move = input('enter human move [r,c] ');
        r = move(1)
        c = move(2)
        %check for unoccupied spot
        freespot2 = true;
        while (freespot2)
            if (r < 1 || r > 3 || c < 1 || c > 3)
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
                
            elseif gameboard (r,c) == 0
                gameboard(r,c) = 1;
                text(c,-r,'X','horizontalalignment','center','fontsize',20)
                freespot2 = false;
                
                
            elseif gameboard(r,c) ~= 0
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
            end
        end 
        %computer's 2nd move
        CPsecondmove = true;
        while (CPsecondmove)
            cpRowmove = randi([1 3],1);
            cpColmove = randi([1 3],1);
            if gameboard(cpRowmove,cpColmove) == 0
                gameboard(cpRowmove,cpColmove) = -1
                text(cpColmove,-cpRowmove,'O','horizontalalignment','center','fontsize',20)
                CPsecondmove= false;
            end 
        end
        %Player's 3rd move
         freespot2 = true;
        while (freespot2)
            if (r < 1 || r > 3 || c < 1 || c > 3)
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
                
            elseif gameboard (r,c) == 0
                gameboard(r,c) = 1;
                text(c,-r,'X','horizontalalignment','center','fontsize',20)
                freespot2 = false;
                
            elseif gameboard(r,c) ~= 0
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
            
                   
            end
        end 
        
        %check to see if human wins
        
             
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result == 3)
            disp('Human wins')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        %computer 3rd move
        CPthirdmove = true;
        while (CPthirdmove)
            cpRowmove = randi([1 3],1);
            cpColmove = randi([1 3],1);
            if gameboard(cpRowmove,cpColmove) == 0
                gameboard(cpRowmove,cpColmove) = -1
                text(cpColmove,-cpRowmove,'O','horizontalalignment','center','fontsize',20)
                CPthirdmove= false;
            end 
        end
        
        %check to see if CP wins
        
             
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result == -3)
            disp('Computer wins, lol')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        %Players' 4th move
        
         freespot3 = true;
        while (freespot3)
            if (r < 1 || r > 3 || c < 1 || c > 3)
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
                
            elseif gameboard (r,c) == 0
                gameboard(r,c) = 1;
                text(c,-r,'X','horizontalalignment','center','fontsize',20)
                freespot3 = false;
                
            elseif gameboard(r,c) ~= 0
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
            
                   
            end
        end 
        
        %check to see if human wins
        
             
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result == 3)
            disp('Human wins')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        %CP 4th move
        
        CPfourthmove = true;
        while (CPfourthmove)
            cpRowmove = randi([1 3],1);
            cpColmove = randi([1 3],1);
            if gameboard(cpRowmove,cpColmove) == 0
                gameboard(cpRowmove,cpColmove) = -1
                text(cpColmove,-cpRowmove,'O','horizontalalignment','center','fontsize',20)
                CPfourthmove= false;
            end 
        end
        
        %check to see if CP wins
        
             
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result == -3)
            disp('Computer wins, lol')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        %Player's 5th move
        
        freespot4 = true;
        while (freespot4)
            if (r < 1 || r > 3 || c < 1 || c > 3)
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
                
            elseif gameboard (r,c) == 0
                gameboard(r,c) = 1;
                text(c,-r,'X','horizontalalignment','center','fontsize',20)
                freespot4 = false;
                
            elseif gameboard(r,c) ~= 0
                disp('invalid move')
                move = input('enter human move [r,c] ');
                r = move(1);
                c = move(2);
            
                   
            end
        end 
        
        %check to see if human wins
        
             
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result == 3)
            disp('Human wins')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        %Check for a tie
        
        result(1) = gameboard(1,1) + gameboard(1,2) + gameboard(1,3);
        result(2) = gameboard(2,1) + gameboard(2,2) + gameboard(2,3);
        result(3) = gameboard(3,1) + gameboard(3,2) + gameboard(3,3);
        result(4) = gameboard(1,1) + gameboard(2,1) + gameboard(3,1);
        result(5) = gameboard(1,2) + gameboard(2,2) + gameboard(2,3);
        result(6) = gameboard(1,3) + gameboard(2,3) + gameboard(3,3);
        result(7) = gameboard(1,1) + gameboard(2,2) + gameboard(3,3);
        result(8) = gameboard(1,3) + gameboard(2,2) + gameboard(3,1);
        if any(result ~= 3)
            disp('It''s a Draw!!')
            answer = input('Do you want to play again? (yes/no)', 's');
            continue;
        end
        
        playQuestion = false;
    elseif(strcmp( 'no', answer))
        disp('Thank you for playing, better luck next time!')
        playQuestion = false;
    else
        disp( 'Invalid answer, please respond yes or no')
        answer = input(' Please enter yes or no: ', 's');
        
    end    
end    

