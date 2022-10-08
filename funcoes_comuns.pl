%------------------------------------------------------------------------------
% INTELIGENCIA ARTIFICIAL - GRUPO 43
%------------------------------------------------------------------------------


%------------------------------------------------------------------------------
%								FUNCOES GERAIS
%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
% Extensao do predicado insere: Termo -> {V, F}	

insere(Termo) :- assert(Termo).
insere(Termo) :- retract(Termo), !, fail.

%------------------------------------------------------------------------------
% Extensao do predicado remove: Termo -> {V, F}	

remove(Termo) :- retract(Termo).
remove(Termo) :- assert(Termo), !, fail.

%------------------------------------------------------------------------------
% Extensao do predicado teste: Lista -> {V, F}	

teste([]).
teste([H | T]) :- H, teste(T).

%------------------------------------------------------------------------------
% Extensao do predicado solucoes: Termo, Questao, Resultado -> {V, F}

solucoes(T,Q,R) :- findall(T,Q,R).

%------------------------------------------------------------------------------
% Extensao do predicado solucoesSRep: Termo, Questao, Resultado -> {V, F}

solucoesSRep(T,Q,R) :- setof(T,Q,R).

%------------------------------------------------------------------------------
% Extensao do predicado soma: Lista, Resultado -> {V,F}

soma([], 0).
soma([H|T], R) :-
    soma(T, R1),
    R is R1+H.

%------------------------------------------------------------------------------
% Extensao do predicado comprimento: Lista, Resultado -> {V,F}

comprimento([], 0).
comprimento([_|T], C) :-
    comprimento(T, C1),
    C is C1+1.

%------------------------------------------------------------------------------
% Extensao do predicado media: Lista, Resultado -> {V,F}

media(Lista, M) :-
    soma(Lista, S),
    comprimento(Lista, C),
    M is S / C.

%------------------------------------------------------------------------------
% Extensao do predicado concatenar: Lista1, Lista2, Resultado -> {V,F}

concatenar(L, [], L).
concatenar([], L, L).
concatenar([H|T], L2, [H|R]) :-
	concatenar(T,L2,R).

%------------------------------------------------------------------------------
% Extensao do predicado depois: Data1, Data2, Resultado -> {V,F}

depois(data(A1, _, _), data(A2, _, _)) :-
	A1 > A2.
depois(data(A1, M1, _), data(A2, M2, _)) :-
	A1 >= A2,
	M1 > M2.
depois(data(A1, M1, D1), data(A2, M2, D2)) :-
	A1 >= A2,
	M1 >= M2,
	D1 > D2.

%------------------------------------------------------------------------------
% Extensao do predicado antes: Data1, Data2, Resultado -> {V,F}

antes(data(A1, _, _), data(A2, _, _)) :-
	A1 < A2.
antes(data(A1, M1, _), data(A2, M2, _)) :-
	A1 =< A2,
	M1 < M2.
antes(data(A1, M1, D1), data(A2, M2, D2)) :-
	A1 =< A2,
	M1 =< M2,
	D1 < D2.

%------------------------------------------------------------------------------
% Extensao do predicado nao: Predicado -> {V,F}

nao(P) :- call(P), !, fail.
nao(_).

%------------------------------------------------------------------------------
% Extensao do predicado contar: Predicado, Lista, Resultado -> {V,F}

contar(_, [], 0).
contar(T, [T|L], R) :-
	contar(T, L, R1),
	R is R1+1.
contar(T, [_|L], R) :-
	contar(T, L, R1),
	R is R1.

