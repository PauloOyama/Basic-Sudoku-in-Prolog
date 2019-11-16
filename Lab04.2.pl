maior([],0).
maior([H|T],N):- maior(T,N1),H > N1,!;
                 maior(T,N1) ,N1 =< N.
