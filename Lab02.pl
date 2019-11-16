influencer(penny,10).
influencer(mary,2).
influencer(john,5).
likes(john,mary).
likes(john,penny).
likes(penny,wine).
likes(mary,juice).
likes_(X,Y) :- influencer(X,O),
               influencer(H,N),
               likes(X,H),
               likes(H,Y),
               N > O.
/* O Prolog usa por meio da busca individual de cada fato para determinar o valor de uma determinada var�avel na ordem que est� sendo dado pelo c�digo, quando encontrado somente um valor, a var�avel ao qual estava buscando toma o valor encontrado,quando o numero de valores encontrados sao maiores do que um, o sistema n�o assimila nenhum dos valores, todos satisfazem ao fato dado. No caso do c�digo acima como h� uma regra, que � composta de varios fatos, no qual o programa tende a retomar a busca utilizando o fatos fornecidos em ordem de
execu��o para tentar rastrear a variavel(ex;"X,H,Y,O,N") que pode
satisfazer � determinada regra e assim por diante, quando ele encontra
um fato formado por numeros, as vari�veis(ex;"N","O") fazem a
aritmetica descrita podendo retornar com uma valor, ou seja a atribui��o
de um numero a uma variavel(ex; "Y is 1 + 2"), ou um valor verdade como
sim ou nao em casos de compara��o de valores( "N > O") */
