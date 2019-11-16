filho(pai,autor).
filho(viuva,ruiva).
filho(autor,ruiva).
filho(ruiva,autor).
casado(pai,ruiva).
casado(autor,viuva).
casadoV(X,Y):-casado(X,Y);
              casado(Y,X).
mae(X,Y):-casadoV(X,Z),filho(Z,Y),filho(X,Y).
vo(X,Y):-mae(X,Z),casadoV(Z,H),filho(Z,Y),filho(H,Y).
avo(X,Y):-casadoV(X,Z),vo(Z,Y).


/* Eu sou meu proprio avo: Meu pai é casado com a filha da minha esposa, logo a minha esposa é minha avó , já
que ela é mãe da minha "mãe", mas como ela é a minha esposa, então eu sou avô de mim mesmo"*/