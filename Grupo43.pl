%------------------------------------------------------------------------------
% INTELIGENCIA ARTIFICIAL - GRUPO 43
%------------------------------------------------------------------------------

:- include('baseConhecimento').
:- include('funcoes_comuns').

%------------------------------------------------------------------------------
%                          FUNCIONALIDADES FASE 1
%------------------------------------------------------------------------------
% 1) Identificar o estafeta que utilizou mais vezes um meio de transporte mais
% ecológico

transporte_mais_ecologicoAUX([],(R1,_),R1).
transporte_mais_ecologicoAUX([(X,Y)|T],(_,R2),R) :- Y<R2, !, 
												     transporte_mais_ecologicoAUX(T,(X,Y),R).
transporte_mais_ecologicoAUX([(_,_)|T],(R1,R2),R) :- transporte_mais_ecologicoAUX(T,(R1,R2),R).


transporte_mais_ecologico(R) :- emissaoCO2(M,O), 
                                findall((ID,P),emissaoCO2(ID,P),L), 
                                transporte_mais_ecologicoAUX(L,(M,O),R).


estafeta_mais_ecologicoAUX2([],(R,_), R).
estafeta_mais_ecologicoAUX2([(ID,ENC)|T], (_,NUM), R) :- comprimento(ENC,NUM2), NUM2>NUM, !, 
                                                           estafeta_mais_ecologicoAUX2(T, (ID,NUM2), R).
estafeta_mais_ecologicoAUX2([(_,_)|T], (IDA,NUM), R) :- estafeta_mais_ecologicoAUX2(T, (IDA,NUM), R).


estafeta_mais_ecologicoAUX1([],_,R, R).
estafeta_mais_ecologicoAUX1([I|T],MEIOECO, L, R) :- findall(I,entrega(_,I,_,_,_,_,MEIOECO,_,_),TEMP), 
                                                    estafeta_mais_ecologicoAUX1(T,MEIOECO, [(I,TEMP)|L], R).


estafeta_mais_ecologico(ID, NOME) :- transporte_mais_ecologico(MEIOECO), 
                                     findall(I,estafeta(I,_),LE), 
                                     estafeta_mais_ecologicoAUX1(LE,MEIOECO,[],LE2), 
                                     estafeta_mais_ecologicoAUX2(LE2,(1,-1),ID), 
                                     estafeta(ID,NOME).

%------------------------------------------------------------------------------
% 2) Identificar que estafetas entregaram determinada(s) encomenda(s) a um
% determinado cliente;

estafetasPorEncomendaCliente([], _, []).
estafetasPorEncomendaCliente([H|T], IdC, [R|RS]) :-
		solucoes((IdE, Nome), (entrega(_, IdE, IdC, H, _, _, _, _, _), estafeta(IdE, Nome)), R),
		estafetasPorEncomendaCliente(T, IdC, RS).

%------------------------------------------------------------------------------
% 3) Identificar os clientes servidos por um determinado estafeta;
% Extensao do predicado clientesPorEstafeta: idEstafeta, Resultado -> {V,F}
	
clientesPorEstafeta(IdE, R) :-
	solucoesSRep((IdC, Nome), (entrega(_, IdE, IdC, _, _, _, _, _, _),cliente(IdC, Nome)), R).
		
%------------------------------------------------------------------------------
% 4) Calcular o valor faturado pela Green Distribution num determinado dia;

faturadoDia(D, S) :-
	solucoes((M+(24-P)), (entrega(_, _, _, IdEnc, _, M, _, D, _), encomenda(IdEnc, _, _, P)), R),
    soma(R, S).

%------------------------------------------------------------------------------
% 5) Identificar quais as zonas (e.g., rua ou freguesia) com maior volume de
% entregas por parte da Green Distribution;

maximo([],X,X).
maximo([(I,N,E)|T], (_,_,T3), R) :- E > T3, !, maximo(T, (I,N,E), R).
maximo([(_,_,_)|T], (T1,T2,T3), R) :- maximo(T, (T1,T2,T3), R).

get_num_entregas([],R,R).
get_num_entregas([(I,N)|T],L,R) :- findall(IDT, entrega(IDT,_,_,_,I,_,_,_,_), TEMP), 
                                   comprimento(TEMP,NUM), 
                                   get_num_entregas(T,[(I,N,NUM)|L],R).

freguesiaMaisEntregas(R) :- findall((I,N), freguesia(I,N), ENTS),
							get_num_entregas(ENTS,[],RES),
							maximo(RES, (-1,'A',-1), (_,R,_)).

%------------------------------------------------------------------------------
% 6) Calcular a classificação media de satisfação de cliente para um determinado
% estafeta;
% Extensao do predicado classifDeClientePorEstafeta: idE, idC -> {V, F}

classifDeClientePorEstafeta(IdE, IdC, M):-
    solucoes((C), (entrega(_, IdE, IdC, _, _, _, _, _, C), cliente(IdC, _)), R),
    media(R, M).

%------------------------------------------------------------------------------
% 7) Identificar o número total de entregas pelos diferentes meios de transporte,
% num determinado intervalo de tempo;

entregasPorMeio(D1, D2, R) :-
	solucoes((Nome), (entrega(_, _, _, _, _, M, _, DE, _), meiotransporte(M, Nome), ((depois(DE, D1), antes(DE, D2)) ; (D1==DE ; D2==DE))), S),
	contar('Moto', S, S1),
	contar('Bicicleta', S, S2),
	contar('Carro', S, S3),
	R = [(S1, 'Moto'), (S2, 'Bicicleta'), (S3, 'Carro')].

%------------------------------------------------------------------------------
% 8) Identificar o número total de entregas pelos estafetas, num determinado
% intervalo de tempo;

entregasFeitas(D1, D2, R):-
	solucoes((IDE, DE), (entrega(IDE, _, _, _, _, _, _, DE, _), ((depois(DE, D1), antes(DE, D2)) ; (D1==DE ; D2==DE))), S),
	comprimento(S, R).

%------------------------------------------------------------------------------
% 9) Calcular o número de encomendas entregues e não entregues pela Green
% Distribution, num determinado período de tempo;

entregasNFeitas(D1, D2, (R1, R3)):-
	solucoes((IDE, DE), (entrega(IDE, _, _, _, _, _, _, DE, _), ((depois(DE, D1), antes(DE, D2)) ; (D1==DE ; D2==DE))), S),
	comprimento(S, R1),
	solucoes((IDE, DE), entrega(IDE, _, _, _, _, _, _, DE, _), S2),
	comprimento(S2, R2),
	R3 is R2-R1.

%------------------------------------------------------------------------------
% 10) Calcular o peso total transportado por estafeta num determinado dia.
% Extensao do predicado pesoEstafetaDia: idE, data -> {V, F}

pesoEstafetaDia(IdE, D, S) :-
	solucoes((P), (entrega(_, IdE, _, IdEnc, _, _, _, D, _), encomenda(IdEnc, P, _, _)), R),
    soma(R, S).

%------------------------------------------------------------------------------
%                          FUNCIONALIDADES FASE 2
%------------------------------------------------------------------------------
% 1) Gerar os circuitos de entrega, caso existam, que cubram um determinado território

% 

% 2) Representação dos diversos pontos de entrega em forma de grafo, tendo em conta que
%    apenas se devem ter localizações (rua e/ou freguesia) disponíveis

%	analisar isto: https://swish.swi-prolog.org/example/render_graphviz.swinb

% 3) Identificar quais os circuitos com maior número de entregas (por volume e peso)

%	imediato após fazer a lista de cada circuito no ponto 1 pois basta contar o
%   numero de encomendas em cada circuito e guardar o id do maior

% 4) Comparar circuitos de entrega tendo em conta os indicadores de produtividade

%	imediato após fazer a lista de cada circuito no ponto 1 pois cada um deverá
%   associado o custo com (tempo,distancia) pelo que se pode exportar uma lista
%   com o ranking dos circuitos por tempo e por distancia e já fica a comparação feita

% 5) Escolher o circuito mais rápido (usando o critério da distância)

%	imediato após fazer o ponto anterior pois basta ir à lista do ranking por distancia
%   e escolher o primeiro

% 6) Escolher o circuito mais ecológico (usando um critério de tempo)

%	imediato após fazer o ponto anterior pois basta ir à lista do ranking por tempo
%   e escolher o primeiro
