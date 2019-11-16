p(1).
p(2).
p(3).
p(4).
sudoku([]).
sudoku([B|T]):- verifica_bloco(B),sudoku(T).

verifica_blocoI([X]).
verifica_bloco([H|T]):- \+member(H,T),verifica_bloco(T).