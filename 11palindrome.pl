palindrome:-
write('Enter size of the list: '),
read(N),
inputList(N,L),
write('Input list is: '),
write(L),
nl,
% returns true when element of the second list is in reverse order compared to list 1
(reverse(L,L)->
write('Given list is a palidnrome.');
write('Given list is not a palindrome.')
).


inputList(0,[]).
inputList(N,R):-
N1 is N-1,
write('Enter element : '),
read(I),
inputList(N1,R1),
append([I],R1,R).



