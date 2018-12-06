tamanho([], 0).
tamanho([_|L], X) :- tamanho(L, Z), X is Z + 1.