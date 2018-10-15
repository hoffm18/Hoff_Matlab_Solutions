clear all
clc
close all
board = zeros(3,3);
% Draw Board
figure
plot([.5 3.5],[-1.5 -1.5], 'k','linewidth',2);
hold on
plot([.5 3.5],[-2.5 -2.5], 'k','linewidth',2)
plot([1.5 1.5],[-.5 -3.5], 'k','linewidth',2)
plot([2.5 2.5],[-.5 -3.5], 'k','linewidth',2)
hold off
axis off
% Obtain first move
move = input('enter player 1 move [r,c] ');
r = move(1);
c = move(2);
board(r,c) = 1;
text(c,-r,'X','horizontalalignment','center','fontsize',20)
% Start loop with 2nd player
for turn = 1:4
    move = input('enter player 2 move [r,c] ');
    r = move(1);
    c = move(2);
    board(r,c) = -1;
    text(c,-r,'O','horizontalalignment','center','fontsize',20)
      % Check for victory by 0, 2nd player
      result = [sum(board), sum(board) ];
      result(1) = board(1,1) + board(2,2) + board(1,3);
      result(2) = board(2,1) + board(2,2) + board(2,3);
      result(3) = board(3,1) + board(3,2) + board(3,3);
      result(4) = board(1,1) + board(2,1) + board(3,1);
      result(5) = board(2,1) + board(2,2) + board(2,3);
      result(6) = board(1,3) + board(2,3) + board(3,3);
      result(7) = board(1,1) + board(2,2) + board(3,3);
      result(8) = board(1,3) + board(2,2) + board(3,1);
      if any(result == -3)
          disp('player 2 wins')
          break
      end
      % Repeat for player 1
      move = input('enter player 1 move [r,c] ');
      r = move(1);
      c = move(2);
      board(r,c) = 1;
      text(c,-r,'X','horizontalalignment','center','fontsize',20)
      % Check for victory for X, 1st player
      result = [sum(board), sum(board) ];
      result(1) = board(1,1) + board(2,2) + board(1,3);
      result(2) = board(2,1) + board(2,2) + board(2,3);
      result(3) = board(3,1) + board(3,2) + board(3,3);
      result(4) = board(1,1) + board(2,1) + board(3,1);
      result(5) = board(2,1) + board(2,2) + board(2,3);
      result(6) = board(1,3) + board(2,3) + board(3,3);
      result(7) = board(1,1) + board(2,2) + board(3,3);
      result(8) = board(1,3) + board(2,2) + board(3,1);
      if any(result == 3)
          disp('player 1 wins')
          break
      end
  end
  % Checks for draw
  if all(result ~= 3) & (sum(sum(abs(board))) == 9)
      disp('nobody wins')
  end