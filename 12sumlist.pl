sumlist:-
write('***** Program to find sum of list elements. *****'),nl,
write('Enter size of the list. '),
read(N),
inputList(N,R),
write('List is : '),write(R),nl,
sumList(R,S),
write('Sum of the elements is: '),write(S).

% Program to sum list elements.
sumList([],0).
sumList([H|T],R):-
sumList(T,R1),
R is H+R1.


% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).