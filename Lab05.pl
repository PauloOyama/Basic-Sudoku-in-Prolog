%Bigger element
bigel(N,[N]).
bigel(N,[H|T]) :- bigel(N1,T),N1>=H,N is N1,!;
                    bigel(N1,T),H>N1 ,N is H,!.

%Fatorial
fat(0,1).
fat(N,F) :- N>0,M is N-1,fat(M,R),F is N*R,!.

%conjGoldbach
isPrime(2).
isPrime(3).
isPrime(V) :- V > 3, mod(V, 2) =\= 0, \+ factor(V, 3).

factor(N, F) :- mod(N, F) =:= 0, !.
factor(N, F) :- F * F < N, F2 is F + 2, factor(N, F2).

nextPrime(N, P) :- P is N + 2, isPrime(P), !; R is N + 2, nextPrime(R, P).

conjGold(V) :- mod(V, 2) =\= 0, fail, !.
conjGold(4) :- !.
conjGold(V) :- mod(V, 2) =:= 0, V > 4, conjGold(V,3).

conjGold(V, P) :- C is V - P, isPrime(C), !.
conjGold(V, P) :- P < V, nextPrime(P, P1), conjGold(N, P1), !.

%SumK
member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).
sumk([H|T],K):- X is K - H, member(X,T);
                sumk(T,K),!.

%Subconj
sumel([], 0).
sumel([H|T], N) :- sumel(T, N1), N is N1 + H.

subconj([], []).
subconj([H|Tale], [H|Td]) :- subconj(Tale, Td).
subconj([_|Tale], Td) :- subconj(Tale,Td).

sumConj(X,Y):- subconj(X,Z),sumel(Z,Y).        

