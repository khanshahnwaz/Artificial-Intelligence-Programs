member:-
write(' ***** Program to check if an element is member of the list. *****'),nl,
write('Enter size of the list. '),
read(N),
inputList(N,R),
write('List is : '),write(R),nl,
% Now input item to check membership 
write('Enter element to search in list: '),
read(E),
(member(E,R)->
write('Element found.');
write('Element not found.')
).

% Predicate to check element in the list.

member(X,[X|_]).
member(X,[_|T]):-
    member(X,T).

% Predicate to input N elements recursively. 

% If size is 0 then return empty list.
inputList(0,[]).
inputList(N,R):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,R1),
append([I],R1,R).



  

