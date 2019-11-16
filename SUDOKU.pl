p(1).
p(2).
p(3).
p(4).
sudoku([]):-!.
sudoku([[A1,A2,A3,A4],[B1,B2,B3,B4],[C1,C2,C3,C4],[D1,D2,D3,D4]]):- 
%Linha
verifica([A1,A2,B1,B2]),
verifica([A3,A4,B3,B4]),
verifica([C1,C2,D1,D2]),
verifica([C3,C4,D3,D4]),
%coluna
verifica([A1,A3,C1,C3]),
verifica([A2,A4,C2,C4]),
verifica([B1,B3,D1,D3]),
verifica([B2,B4,D2,D4]),
%Bloco
verifica([A1,A2,A3,A4]),
verifica([B1,B2,B3,B4]),
verifica([C1,C2,C3,C4]),
verifica([D1,D2,D3,D4]).

  verifica_um(A) :- p(A).
  verifica([A, B, C, D]) :-
      verifica_um(A), verifica_um(B), verifica_um(C), verifica_um(D),
      \+(A==B), \+(A==C), \+(A==D),
      \+(B==C), \+(B==D),
      \+(C==D).


