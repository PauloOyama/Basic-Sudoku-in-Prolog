vogal(a).
vogal(e).
vogal(i).
vogal(o).
vogal(u).

dupv([],[]).
dupv([H|T1],[H,H|T2]) :- vogal(H),dupv(T1,T2),!.
dupv([H|T1],[H|T2]) :- dupv(T1,T2).

dupc([],[]).
dupc([H|T1],[H|T2]) :- vogal(H), dupc(T1,T2),!.
dupc([H|T1],[H,H|T2]) :- dupc(T1,T2).
soma(0,[]).
soma(N,[[X|Y]|T]) :- X < Y, soma(N1,T), N is N1 + Y;
                     Y < X, soma(N1,T), N is N1 + X.

