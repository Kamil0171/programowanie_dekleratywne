% konkat(L1,L2,L3)
% spełniony, gdy L3 jest połączeniem list L1 i L2
% ---------------------

% rekurencja ze względu na liste L1:

% warunek kończący rekurencję: połączenie listy
% pustej z listą L daje listę L
	konkat([],L,L).

% rekurencja:
% głowa listy L3 jest głową listy L1
% ogon listy L3 jest połączeniem ogona listy L1
% z listą L2
	konkat([H1|T1],L2,[H1|T3]):-
	konkat(T1,L2,T3).
		
% element (E,L) - spełniony, gdy E jest elementem listy L1
	element(H1,[H1|T1]).
	element(E,[H1|T1]):-element(E,T1).
	
% odwrotna_lista(L1,L2)-spełniony, gdy lista L2 jest odwróceniem listy L1.
% warunek, kończący rekurencję

odwrotna_lista([],[]).

% rekurencja

odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

% Predykaty

% dodatni(X)
% spełniony, gdy X liczbą dodatnią

	dodatni(X):-X>0.
	
% lista_dodatnia(L).
% spełniony, gdy wszystkie elementy listy są dodatnie

	lista_dodatnia(L):-
		maplist(dodatni,L).
		
% wiekszy_od(X,Y)
% spełniony, gdy Y jest większe od X

	wiekszy_od(X,Y):- Y>X.
	
% wiekszy_od_lista(+X,+L).
% spełnionu, gdy wszystkie elmenty listy L są wieksze od X

	wiekszy_od_lista(X,L):-
		maplist(wieksze_od(X),L).