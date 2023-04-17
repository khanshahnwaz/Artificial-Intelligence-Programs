reverseList:-
write('Enter size of the list. '),
read(N),
inputList(N,L),
write('List is : '),write(L),nl,
write('Reversed list is:- '),
reverse_(L,R),
write(R).


% Predicate to input N elements recursively. 
% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,R):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,R1),
append([I],R1,R).


% Code to reverse a list
reverse_([],[]).
reverse_([H|T],R):-
reverse_(T,R1),
append(R1,[H],R).