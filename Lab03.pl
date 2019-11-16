conta(_,[],0).
conta(X,[X|Y],N):- conta(X,Y,N1), N is N1 + 1,!.
conta(X,[_|Y],N):-conta(X,Y,N1), N is N1.

vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).
contaVogal([],0).
contaVogal([X|Y],N) :- vogal(X),contaVogal(Y,N1), N is N1 + 1,!.
contaVogal([_|Y],N) :- contaVogal(Y,N1), N is N1.


somaelementos(0,[]).
somaelementos(N,[X|Y]):- somaelementos(N1,Y), N is N1 + X.
