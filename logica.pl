% Primeira Questão	OK
concatena([],L,L) :- !.
concatena([X|A], B, [X|C]) :- concatena(A, B, C).


% Segunda Questão	OK
operacao(X, Y, Z) :- (Z =:= X + Y -> write(Z), write(' é uma soma de '), write(X), write('+'), write(Y) ;
						Z =:= X - Y -> write(Z), write(' é uma subtração de '), write(X), write('-'), write(Y) ;
						Z =:= X * Y -> write(Z), write(' é uma multiplicação de '), write(X), write('*'), write(Y) ;
						Z =:= X / Y -> write(Z), write(' é uma divisão de '), write(X), write('/'), write(Y)).


% Terceira Questão	OK
fatorial(0, 1) :- !.
fatorial(N, Nfat) :- M is N - 1, fatorial(M, MFat), Nfat is N * MFat.


% Quarta Questão
genitor(margarida, anderson).
genitor(margarida, marcela).
genitor(margarida, sarah).
genitor(renato, anderson).
genitor(renato, marcela).
genitor(renato, sarah).
genitor(fernanda, jonas).
genitor(fernanda, carolina).
genitor(fernanda, matheus).
genitor(lucas, jonas).
genitor(lucas, carolina).
genitor(lucas, matheus).
genitor(maria, flavia).
genitor(carlos, flavia).
genitor(sarah, gabriel).
genitor(sarah, eduarda).
genitor(jonas, gabriel).
genitor(jonas, eduarda).
genitor(gustavo, ana).
genitor(carolina, ana).
genitor(matheus, daniel).
genitor(flavia, daniel).

homem(renato).
homem(lucas).
homem(carlos).
homem(anderson).
homem(jonas).
homem(gustavo).
homem(matheus).
homem(gabriel).
homem(daniel).
mulher(margarida).
mulher(fernanda).
mulher(maria).
mulher(marcela).
mulher(sarah).
mulher(carolina).
mulher(flavia).
mulher(eduarda).
mulher(ana).

pais(X, Y, Z) :- homem(X), mulher(Y), genitor(X,Z), genitor(Y,Z).

sexo(X) :- homem(X) -> write('masculino'), !.
sexo(X) :- mulher(X) -> write('feminino'), !.

irmao(X, Y) :- homem(X), genitor(Z, X), genitor(Z, Y), X \== Y.
irma(X, Y) :- genitor(A, X), genitor(A, Y), mulher(X), X \== Y.

irmaos(X, Y) :- genitor(Z, X), genitor(Z, Y), X \== Y.

descendente(X, Y) :- genitor(Y, X).
descendente(X, Y) :- genitor(A, X), descendente(A, Y).

pai(X, Y) :- homem(X), genitor(X, Y).
mae(X, Y) :- mulher(X), genitor(X, Y).

filho(X, Y):- homem(X), genitor(Y, X).
filha(X, Y):- mulher(X), genitor(Y, X).

oavo(X, Y) :- pai(X, Z), genitor(Z, Y).
aavo(X, Y) :- mae(X, Z), genitor(Z, Y).

tio(X, Y) :- homem(X), genitor(A, Y), irmao(X, A).
tia(X, Y) :- mulher(X), genitor(A, Y), irma(X, A).

primo(X, Y) :- homem(X), genitor(A, X), irmaos(A, B), genitor(B, Y).
prima(X, Y) :- mulher(X), genitor(A, X), genitor(B, Y), irmaos(A, B).


% Quinta Questão OK
tamanho([], 0).
tamanho([_|L], X) :- tamanho(L, Z), X is Z + 1.


% Sexta Questão	OK
ultimo([X], X) :- !.
ultimo([_|L], X) :- ultimo(L, X).
primeiro([X|_], X) :- !.
maior([X], X) :- !.
maior([Y|L], X) :- maior(L, Z), (Y > Z -> X = Y; X = Z).
menor([X], X) :- !.
menor([Y|L], X) :- menor(L, Z), (Y < Z -> X = Y; X = Z).
ultimo_primeiro_maior_menor(L, U, P, M, N) :- ultimo(L, U), primeiro(L, P), maior(L, M), menor(L, N).