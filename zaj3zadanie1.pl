mieszka_na(ola, dworcowej).
mieszka_na(piotr, dworcowej).
mieszka_na(karol, dworcowej).
mieszka_na(ania, ogrodowej).
mieszka_na(pawel, ogrodowej).
mieszka_na(kamil, irysowej).
mieszka_na(gosia, irysowej).
mieszka_na(marcin, Ulica) :- mieszka_na(ola, Ulica), ola \= marcin.
sasiad(X, Y) :- mieszka_na(X, Ulica), mieszka_na(Y, Ulica), X \= Y.

% Zastępujące cele

%1.
kto_mieszka_na_dworcowej(X) :- mieszka_na(X, dworcowej).
%2.
sasiad_oli(X) :- mieszka_na(ola, Ulica), mieszka_na(X, Ulica), X \= ola.
%3.
czy_sasiad_marcina(X) :- mieszka_na(marcin, Ulica), mieszka_na(X, Ulica), X \= marcin.
%4.
czy_wspolni_sasiedzi(X, Y) :- sasiad(X, Z), sasiad(Y, Z), X \= Y.

% Fakty: 7
% Reguły: 3
% Klauzule: 10