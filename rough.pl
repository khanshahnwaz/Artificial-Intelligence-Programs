merge:-
write("Enter size of the first list. "),
read(N1),
inputList(N1,L1),
write('First list is: '),
write(L1),
nl,
write("Enter size of the second list. "),
read(N2),
inputList(N2,L2),
write('Second list is :'),
write(L2),nl,
write('Merged sorted list :'),
mergeSort(L1,L2,L3),
write(L3).

inputList(0,[]).
inputList(N,A):-
N1 is N-1,
write('Enter element: '),
read(I),
inputList(N1,A1),
append([I],A1,A).


mergeSort([],L,L).
% If first header is smaller than second
mergeSort([H1|T1],[H2|T2],[H1|T3]):-
H1=<H2,
mergeSort(T1,[H2|T2],T3).

mergeSort(L,[],L).
% if second header is smaller than second.
mergeSort([H1|T1],[H2|T2],[H2|T3]):-
mergeSort([H1|T1],T2,T3).