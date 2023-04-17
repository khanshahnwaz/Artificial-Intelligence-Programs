power:-
write(' ********** Program to find power of a number **********'),
nl,
% Ask user to enter the number and the power respectively.
write('Enter the number: '),
read(Num),
write('Enter the power: '),
read(Pow),
% Call the predicate the calculate the result 
pow(Num,Pow,Ans),
% Display the result 
write(Num),write(' raise to power '),write(Pow), write(' is '),write(Ans).
pow(Num,Pow,Ans):-
% To find the power 
  Ans is Num^Pow.
  