ultimo([X], X) :- !.
ultimo([_|L], X) :- ultimo(L, X).
primeiro([X|_], X) :- !.
maior([X], X) :- !.
maior([Y|L], X) :- maior(L, Z), (Y > Z -> X = Y; X = Z).
menor([X], X) :- !.
menor([Y|L], X) :- menor(L, Z), (Y < Z -> X = Y; X = Z).
ultimo_primeiro_maior_menor(L, U, P, M, N) :- ultimo(L, U), primeiro(L, P), maior(L, M), menor(L, N).