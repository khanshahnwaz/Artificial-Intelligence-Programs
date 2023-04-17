insertNth:-
write('Enter size of the list. '),
read(Le),
inputList(Le,L),
write('List is : '),write(L),nl,
write('Enter nth position: '),
read(N),

length(L,Len),
((N =<0 ; N>Len)->
write('Invald nth position. Retry! ');
write('Enter element to be inserted: '),
read(I),
insertN(I,N,L,R),
write('Updated list is: '),write(R)).

% Code to insert Nth element
insertN(I,1,[H|T],[I,H|T]).
insertN(I,N,[H|T],[H|R]):-
N1 is N-1,
insertN(I,N1,T,R).


% Code to input list element recursively.
% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).