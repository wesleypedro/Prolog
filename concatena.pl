concatena([],L,L) :- !.
concatena([X|A], B, [X|C]) :- concatena(A, B, C).