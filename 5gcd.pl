gcd:-
write('********** Program to find GCD of two numbers *********'),
nl,
% Ask user to enter first and second number to find its Greatest common divisor
write('Enter first number: '),
read(A),
write('Enter second number: '),
read(B),
% Call predicate to calculate gcd of these two numbers
gcd(A,B,X),
write('GCD of '),write(A),write(' and '),write(B),write(' is '),write(X).

gcd(X,0,X).
gcd(N1,N2,Res):-
  R is N1 mod N2,
  gcd(N2,R,Res). 
