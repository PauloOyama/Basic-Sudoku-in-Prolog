
ser_h(socrates).
mortal(X) :- ser_h(X).


palindro([Head|Tale]) :- reverse([Head|Tale],L), L = [Head|Tale].

retirak([],_,_).
/*retirak([H1|[T1B|T1A]],_,K) :- K>0, length([H1|[T1B|T1A],L), L =:= K,retirak([T1B|T1A],T1B,L);
                    L is L -1, retirak(T1,T1,K).
*/

montal(_,0,_).
montal(I,F,_) :- F = I-1, montal(I,F,[F|_]).

intercala([],L,I) :- !.
intercala(L,[],I) :- !.
intercala([H1|T1],[H2|T2],I) :- H1<H2,intercala(T1,[H2|T2],R), I = [H1|R],!;
                                intercala([H1|T1],T2,R), I = [H2|R].

meia([],[],[]) :- !.
meia([X],[X],[]) :-!.
meia([H|T],A,B) :- meia(T,B,C), A = [H|C].