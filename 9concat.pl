concat:-
write('Enter size of the first list. '),
read(N1),
inputList(N1,L1),
write('First list is: '),write(L1),nl,
write('Enter size of the second list. '),
read(N2),
inputList(N2,L2),
write('Second list is: '),write(L2),nl,
concat(L1,L2,L),
write('Concatenated list is : '),
write(L).

% Predicate to concatenate two lists.
concat([],L,L).
concat([X1|L1],L2,[X1|L3]):-
  concat(L1,L2,L3).


% Predicate to input N elements recursively. 
% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,R):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,R1),
append([I],R1,R).