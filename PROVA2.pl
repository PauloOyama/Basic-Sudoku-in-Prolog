p([],[],_) :- !.
p([X],[[Q,X]],Q) :- !.
p([X,X|T], S,N) :- M is N+1, p( [X|T], S,M),!.
p([X,Y|T],[[N,X]|S],N) :- p( [Y|T],S,1).


y([X1,X2],[X1,X2]) :- X1 < X2,!.
y([X1,X2],[X2,X1]) :- X2 =< X1,!.
y([H1,H2|T],[H1|R]) :- H1<H2, y([H2|T],R),!.
y([H1,H2|T],[H2|R]) :- H2=<H1, y([H1|T],R),!.

/*
intercala([],_,_,I):- !.
intercala(_,[],_,I):- !.
intercala(_,_,[],I):- !.
intercala([H1|T1],[H2|T2],[H3|T3],I):- H1=<H2,H1=<H3,intercala(T1,[H2|T2],[H3|T3],R), I = [H1|R],!;
intercala([H1|T1],[H2|T2],[H3|T3],I):- H2=<H1,H2=<H3,intercala([H1|T1],T2,[H3|T3],R), I = [H2|R],!;
intercala([H1|T1],[H2|T2],[H3|T3],I):- H3=<H1,H3=<H2,intercala([H1|T1],[H2|T2],T3,R), I = [H3|R],!.
*/

movimenta1([L1,C2],[L2,C2]):- abs(L2-L1) =:= 1, abs(C2-C1) =:= 2,!;
                              abs(L2-L1) =:= 2, abs(C2-C1) =:= 1.

movimenta2([L1,C2],[L2,C2]):- abs(L2-L1) = 3, abs(C2-C1) = 3,!;
                              abs(L2-L1) = 2, abs(C2-C1) = 4,!;
                              abs(L2-L1) = 4, abs(C2-C1) = 2.
supercresc([X]).
supercresc([H1,H2]):- H1 =< H2,!.
supercresc([H1,H2,H3|T]):- H1+H2=<H3, supercresc([H2,H2|T]),!.

 a([X, Y, X|_]):−X is Y + 1.
 b([X|X]).
 c([_,_,_]).
 d([X,Y|Z]):−c(X), c(Y), c(Z).
