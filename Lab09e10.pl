%lucasInverso
lucasin(N,L,L1,L2):- N>2,H is N-1,L3 is L2 + L1,lucasin(H,L,L2,L3);
                     N=:=2,L is L2,!.
 
%separalistaPorHead
separ([],[],[]).
separ([H|[H1|L]],[H1|T2],T):- H1 > H, separ([H|L],T2,T).
separ([H|[H1|L]],T1,[H1|T3]):- H >= H1, separ([H|L],T1,T3).
separ([H],T1,T):-separ([],T1,T).

%separalistaPorK
separ2([],_,[],[]).
separ2([H|L],K,[H|T],T2) :- H>K, separ2(L,K,T,T2).
separ2([H|L],K,T1,[H|T]) :- H=<K, separ2(L,K,T1,T).               

%Linear
linear([],[]).
linear([[H|T1]|T],[H|Tm]):- linear([T1|T],Tm).
linear([H|T],[H|Tm]):- linear(T,Tm).

%removeK
remove([X],[],_).
remove([H|T],[H|T2],K):-K>1,X is K-1,remove(T,T2,X).
remove([H|[H3|T]],[H3|T2],K):-remove([H3|T],T2,K).

%dama
pos(1).
pos(2).
pos(3).
pos(4).
pos(5).
pos(6).
pos(7).
pos(8).

ataca([X1,Y1],[X2,Y2]):-
        X1 =:= X2,!;
        Y1 =:= Y2,!;
        mesmaDiag([X1,Y1],[X2,Y2]),!.

mesmaDiag([L1,C1],[L2,C2]) :-
A1 is abs(L1-L2),
A2 is abs(C1-C2), A1 is A2.
segura([L1,C1],[L2,C2]) :- pos(L1),pos(L2),pos(C1),pos(C2), \+ataca([L1,C1],[L2,C2]).

verifica1a1([_]) :- !.
verifica1a1([H|[H1|T]]) :- segura(H, H1), verifica1a1([H|T]).

dama([]) :- !.
dama([H|T]) :- verifica1a1([H|T]), dama(T).


%ElementosConsecutivosDiferentes
/*Uma lista de entrada que possui elementos consecutivos repetidos, tem sua lista
reduzida a somente um elemento repetido por seguimento, por exemplo,
[a,a,b,c,d,e,e] -> [a,b,c,d,e]*/ 
consDif([],[]).
consDif([X],[X]).
consDif([X,X|Xs],Zs) :- consDif([X|Xs],Zs).
consDif([X,Y|Ys],[X|Zs]) :- X \= Y, consDif([Y|Ys],Zs).

%DuplicaElementos
/*Pega os Elementos de uma lista e os Duplica em outra*/
dupElem([],[]).
dupElem([X|Xs],[X,X|Ys]) :- dupElem(Xs,Ys).

%UltimoElemEhoMaior
/*O maior Elemento da Lista é "Empurrado" ao final da lista, ou seja, o elemento final da lista será 
sempre o maior elementos dela*/
jaer([X1,X2],[X1,X2]) :- X1 < X2,!.
jaer([X1,X2],[X2,X1]) :- X2 =< X1,!.
jaer([H1,H2|T],[H1|R]) :- H1<H2, jaer([H2|T],R),!.
jaer([H1,H2|T],[H2|R]) :- H2=<H1, jaer([H1|T],R),!.



