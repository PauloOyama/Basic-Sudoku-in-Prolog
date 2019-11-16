consDif([],[]).
consDif([X],[X]).
consDif([X,X|Xs],Zs) :- consDif([X|Xs],Zs).
consDif([X,Y|Ys],[X|Zs]) :- X \= Y, consDif([Y|Ys],Zs).

empaco([],[]).
empaco([X],[X]).
empaco([X,X|T],[[X|Z]|T2]):- empaco([X|T],[Z|T2]).
empaco([X,Y|T],[[X|Z]|T2]):- empaco([Y|T],T2).

desempa([],[]).
desempa([[X|Y]|T],[Y|H1]):- X>0,X1 is X -1,desempa([[X1|Y]|T],H1).
desempa([[X|Y]|T],H):- desempa(T,H).

nume(X,Y,AB):-X<Y, AB is Y/X .
nume(X,Y,AB):-Y<X, AB is X/Y.

%Comecando0

repeti([]):- false,!.
repeti([H|T]):- member(H,T),!;
                repeti(T).

listino([],_).
listino([H|T],Contida):- member(H,Contida),listino(T,Contida),!.

base_to_dec(_, [], _) :- fail,!.
base_to_dec(_, [X], X) :- !.
base_to_dec(Base, [H,H1|T], R) :- Prox is H*Base + H1, base_to_dec(Base, [Prox|T], R), !.

trian(1,1).
trian(N,Tn):- X is N-1,trian(X,Tn2),Tn is Tn2+N.

sub([], []) :- !.
sub([H|T], [H|Tn]) :- sub(T, Tn).
sub([_|T], Tn) :- sub(T, Tn).

dup([],[]).
dup([X|T],[X,X|T2]):-dup(T,T2).

dupli([],_,[]).
dupli([X|Y],Num,[X|T]):- Num > 0, Num2 is Num-1,dupli([X|Y],Num2,T);
                         dupli(Y,Num,T).

div([],_,[],[]).
div([H|T],X,[H|Y],L2):-X>0,X2 is X-1,div(T,X2,Y,L2).
div([H|T],X,L1,[H|Y2]):-div(T,0,L1,Y2).


zip([], []). 
zip([X], [[X]]). 
zip([H,T|TS], [[H]|ProximoTS])   :- H = T, zip([T|TS], ProximoTS). 
zip([H, H|HS], [[H|HH]|T]) :- zip([H|HS], [HH|T]).

drop([],_,[]).
drop([X],0,[X]).
drop([H|T],X,T2):-length([H|T],K),P is K mod X, P =:= 0,drop(T,X,T2).
drop([H|T],X,[H|T2]):-drop(T,X,T2).
  
last([],[]).
last([X],[X]).
last([H|T],P):- last(T,P).

inter([],[],[],I).
inter([H1|T1],[H2|T2],[H3|T3],I):- [H1|T1]\==[], H1 =< H2,H1 =< H3,inter(T1,[H2|T2],[H3|T3],R), I = [H1|R];
                                   [H2|T2]\==[],H2 =< H1,H2 =< H3,inter([H1|T1],T2,[H3|T3],R), I = [H2|R];
                                   [H3|T3]\==[],H3 =< H1,H3 =< H2,inter([H1|T1],[H2|T2],T3,R), I = [H3|R].

