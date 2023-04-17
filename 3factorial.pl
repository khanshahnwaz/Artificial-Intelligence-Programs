factorial:-
write('**********Program to find factorial of a number **********'),
nl,
% Ask user to enter number.
write('Enter the number '),
read(N),
% Calling predicates that caluclate the factorial

fact(N,M),
write('Factorial of '),
write(N),
write(' is '),
% Display the output 
write(M).
% Factorial of 0 is 1. base case for recursion 
fact(0,1).

fact(N,M) :-
N>0,
N1 is N-1,
fact(N1, M1),
M is N*M1.
