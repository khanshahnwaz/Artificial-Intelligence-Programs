multi:-
write(' ********** Program to find multiplication of two number **********'),
nl,
% Ask user to enter the multiplier and the multiplicand respectively.
write('Enter the multiplier: '),
read(Num),
write('Enter the multiplicand: '),
read(Num1),
% Call the predicate the calculate the result 
mul(Num,Num1,Ans),
% Display the result 
write(Num),write(' * '),write(Num1), write(' = '),write(Ans).
mul(Num,Num1,Ans):-
% To find the multiple
  Ans is Num*Num1.
  