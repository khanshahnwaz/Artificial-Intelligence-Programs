maxList:-
write('Enter size of the list. '),
read(N),
inputList(N,L),
write('List is : '),write(L),nl,
maxList(L,R),
write('Maximum element in the list is: '),write(R).

% Code to extract maximum element from the list. 
maxTwo(X,Y,X):- X>=Y.
maxTwo(X,Y,Y):-X<Y.
maxList([X],X).
maxList([H,T|Rest],M):-
maxList([T|Rest],M1),
maxTwo(H,M1,M).



% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).