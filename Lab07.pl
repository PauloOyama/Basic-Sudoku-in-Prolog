lista([X]):- X is [X],!.
lista([H|[X|T]]):- H < X, lista([X|T]).

trian(1,1).
trian(N,Tn) :- X is N-1,trian(X,H), Tn is H + N,!.

assom(1):- !.
assom(N):- X is N -1, X mod 2 =:= 0, H is 3*X +1, assom(H),!;
           N mod 2 =:= 0, H is N//2,assom(H),!.

acker(M,N):- M = 0, N + 1;
             M>0, N=:=0,acker(M-1,1);
            acker(M-1,acker(M,N-1)).

sumk([],0).
sumk([H|T],S):- sumk(T,X),S is X + H.

subconj([], []).
subconj([H|Tale], [H|Td]) :- subconj(Tale, Td).
subconj([_|Tale], Td) :- subconj(Tale,Td).
sumConj(X,Y):- subconj(X,Z),sumk(Z,Y).

part(X):- sumk(X,Y),Y mod 2 =:= 0, H is Y//2, sumConj(X,H),!.