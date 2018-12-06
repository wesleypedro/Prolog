fatorial(0, 1) :- !.
fatorial(N, Nfat) :- M is N - 1, fatorial(M, MFat), Nfat is N * MFat.