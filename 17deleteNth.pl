deleteNth:-
write('Enter size of the list. '),
read(N),
inputList(N,L),
write('List is : '),write(L),nl,
write('Enter nth position: '),
read(I),
length(L,Len),
((I =<0 ; I>Len)->
write('Invald nth position. Retry! ');
deleteN(I,L,R),
write('Updated list is: '),write(R)).


% Code to delete Nth element
deleteN(1,[_|T],T).
deleteN(N,[H|T],[H|R]):-
N1 is N-1,
deleteN(N1,T,R).



% Code to input list element recursively.
% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).