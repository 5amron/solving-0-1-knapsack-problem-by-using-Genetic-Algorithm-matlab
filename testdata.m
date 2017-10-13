% TEST DATA FOR GENETn ALGORITHM
% 0/1-Knapsack Problem
%
%  The object list is a set of N = 50 pairs of the form (WEIGHT , PROFIT).

Data=[23 , 27;
      47 , 34;
      22 , 9;
      15 , 22;
      42 , 8;
      30 , 17;
      15 , 22;
      32 , 21;
      47 , 23;
      33 , 19;
      15 , 7;
      38 , 36;
      44 , 11;
      7 , 42;
      16 , 37;
      34 , 16;
      30 , 10;
      33 , 26;
      3 , 10;
      2 , 50;
      43 , 23;
      31 , 46;
      46 , 37;
      17 , 3;
      30 , 14;
      1 , 16;
      34 , 35;
      21 , 14;
      30 , 15;
      21 , 44;
      29 , 49;
      21 , 2;
      36 , 45;
      14 , 3;
      18 , 15;
      21 , 1;
      13 , 34;
      3 , 44;
      27 , 19;
      44 , 25;
      33 , 43;
      11 , 28;
      9 , 26;
      31 , 4;
      40 , 30;
      40 , 24;
      30 , 49;
      9 , 11;
      41 , 48;
      31 , 13];
	  
w = Data(:,1).';
p = Data(:,2).';

% The Knapsack can hold at most "MaxWeight".
% MaxWeight = 625

W = 625;
% for i=1:50
%     disp(['p(',num2str(i),')*x(',num2str(i),')+...'])
% end


 
