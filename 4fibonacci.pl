fibonacci:-
write('********** Program to print fibonacci series of N numbers **********'),
nl,
% Ask user to enter the value of N
write('Enter value of N :'),
read(N),
% Now call the predicate to caluclate the series 
generate_fib(N,T),
write('Term # '),write(N),
write('of fibonacci series is : '),
write(T).

% Series of 1 and 2 numbers are 1 and 1 respectively. Base condition for recursion
generate_fib(1,1).
generate_fib(2,1).
generate_fib(N,T):-
   N>1,
   N1 is N-1,
   N2 is N-2,
   generate_fib(N1,T1),
   generate_fib(N2,T2),
   T is T1+T2.

