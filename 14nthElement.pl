nthElement:-
write('Enter size of the list. '),
read(N),
inputList(N,L),
write('List is : '),write(L),nl,
write('Enter nth position: '),
read(I),
length(L,Len),
((I =<0 ; I>Len)->
write('Invald nth position. Retry! ');
nthEle(I,L,R),
write('#'),write(I), write(' element is : '),write(R)).

% Code to extract nth element.

nthEle(1,[H|_],H).
nthEle(N,[_|T],Re):-
N1 is N-1,
nthEle(N1,T,Re).


% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).