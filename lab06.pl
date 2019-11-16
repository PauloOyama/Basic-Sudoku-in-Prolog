%repeated_element
member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).
r_elem([H|Y]) :- member(H,Y),!;
                 r_elem(Y).

%ListInList
list_l(_,[]) :- !.
list_l(Lista,[H2|T2]):- member(H2,Lista),list_l(Lista,T2),!.

%Queen2Queen
queen_Q([X1|Y1],[X2|Y2]):- X1 =:= X2,!;
                           Y1 =:= Y2,!;
                           X1-Y1 =:= X2-Y2,!;
                           X1+Y1 =:= X2+Y2,!. 

%TypeTriangle

%ItsTriangle
its_triang(A,B,C):- abs(A - B) < C, C<A+B, 
                    abs(B - C) < A, A<B+C, 
                    abs(C - A) < B, B<A+B.

%FirstWay
type_Tscalene(A,B,C):-its_triang(A,B,C), A=\=B , B=\=C.
type_Tequilateral(A,B,C):-its_triang(A,B,C),A=:=B , B=:=C.
type_Tisosceles(A,B,C):- its_triang(A,B,C),A=:=B,B=\=C,!;
                         its_triang(A,B,C),A=\=B,B=:=C,!.
%SecondWay
type_T(A,B,C):- A=\=B , B=\=C,write(scalene),!;
                A=:=B , B=:=C,write(equilateral),!;
                A=:=B , B=\=C,write(isosceles),!;
                A=\=B , B=:=C,write(isosceles),!. 

%BinToDec
bin2dec([],0).
bin2dec([H|T],V) :- bin2dec(T,Vr),
                    length(T,L),
                    V is Vr + H*(2^L).

bindec([], 0).
bindec([N], N).
bindec([H|[Nh|T]], Dec) :- Prox is H * 2 + Nh, bindec([Prox|T], Dec), !.
                     