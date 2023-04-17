max:-
   write('**********Program to find maximum of two numbers**********'),
   nl,
   % Asking user to enter first and second number to compare 
   write('Enter first number: '),
   read(A),
   nl,
   write('Enter second number: '),
   read(B),
   nl,
   write('Maximum number between '),
   write(A),
   write(' and '),
   write(B),
   write(' is '),
   % Using inbuilt predicate max to find the maximum number between two numbers 
   % Store the result in a variable M and return to user
   M is max(A,B),
   write(M).
