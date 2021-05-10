% Solving system of linear equations using Gauss-Siedel iteration method.
% And, calculating the time of execution.

clear
clc

disp("System of equation is the form of Ax = B");

row = input("\nEnter the number of equations :");
column = input("\nEnter the number of variables :");

fprintf("\nEnter the entries of matrix A (row-wise).\n");
for i=1:row
    for j=1:column
        A(i,j) = input('Entry : ');
    end
end
A = reshape(A, row, column);

% Making A(i,i) pivots for all valid i's using partial pivoting.
for i=1:column
    flag = i;
    ilow = abs(A(i,i));
    for j=i+1:row
        if(abs(A(j,i)) > ilow)
            ilow = abs(A(j,i));
            flag = j;
        end
    end
    if flag ~= i
       EXT = A(i,:);
       A(i,:) = A(flag,:);
       A(flag,:) = EXT; 
    end
end

fprintf("\nEnter the entries of matrix B.\n");
for i=1:row
    Z(i) = input('Entry : ');
end
B = Z';

fprintf("\nEnter the initial solution, as per the order of variables.\n");
for i=1:column
    Y(i) = input('Entry : ');
end
X0 = Y';

D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);
H = -(D+L)\U;
C = (D+L)\B;

Itr = input("\nHow many iterations you want to perform.");
tic
for i=1:Itr
    XK = H*X0 + C;
    X0 = XK;
end
toc

fprintf("\nSolution after %d iterations : \n", Itr);
XK













