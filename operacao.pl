operacao(X, Y, Z) :- (Z =:= X + Y -> write(Z), write(' é uma soma de '), write(X), write('+'), write(Y) ;
						Z =:= X - Y -> write(Z), write(' é uma subtração de '), write(X), write('-'), write(Y) ;
						Z =:= X * Y -> write(Z), write(' é uma multiplicação de '), write(X), write('*'), write(Y) ;
						Z =:= X / Y -> write(Z), write(' é uma divisão de '), write(X), write('/'), write(Y)).