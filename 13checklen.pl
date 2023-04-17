checklen:-
write('***** Program to check if list is odd or even. *****'),nl,
write('Enter size of the list. '),
read(N),
inputList(N,L),
write('List is : '),write(L),nl,
oddEven(L).

oddEven([_|T]):-
 length(T,L1),
 L is L1+1,
 E is L mod 2,
 (E =:= 0 ->
 write('List is of even length. ');
 write('List is of odd length.')).
 


% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).