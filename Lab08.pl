filho(viuva,ruiva).
filho(eu,ruiva).
filho(pai,eu).
casado(pai,ruiva).
casado(eu,viuva).
casadoV(X,Y):-casado(X,Y);
              casado(Y,X).
mae(X,Y):-casadoV(X,Z),filho(Z,Y).
vo(X,Y):-mae(X,Z),mae(Z,Y).
avo(X,Y):-vo(Z,Y),casadoV(X,Z).

