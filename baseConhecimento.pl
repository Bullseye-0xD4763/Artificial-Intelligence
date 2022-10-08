%------------------------------------------------------------------------------
% INTELIGENCIA ARTIFICIAL - GRUPO 43
%------------------------------------------------------------------------------


%------------------------------------------------------------------------------
% Base de Conhecimento com informacao da Green Distribution.
%------------------------------------------------------------------------------
% Extensao do predicado cliente: IdCliente, Nome -> {V,F}
	
	cliente(1,'Nuria Boga Gaspar').
	cliente(2,'Jorge Rebelo Cipriano').
	cliente(3,'Francisca Sobreira Belo').
	cliente(4,'Lui Jorge Girao').
	cliente(5,'Nicolae Lages Amado').
	cliente(6,'Isis Queiros Frois').
	cliente(7,'Chelsea Cavadas Negromonte').
	cliente(8,'Esmeralda Avila Camarinho').
	cliente(9,'Lavinia Barroca Cadaval').
	cliente(10,'Miguel Canejo Montenegro').
	cliente(11,'Rosario Quinzeiro ').
	cliente(12,'Karine Carvalheiro ').
	cliente(13,'Kailany Robalo ').
	cliente(14,'Fatima Cartaxo Resende').
	cliente(15,'Evelin Sitima Custodio').
	cliente(16,'Elvira Dinis Simas').
	cliente(17,'Kiara Furquim Larios').
	cliente(18,'Zoe Couceiro Neto').
	cliente(19,'Aaron Rufino Sousa').
	cliente(20,'Viriato Lancastre Varanda').
	cliente(21,'Aliana Craveiro Palhares').
	cliente(22,'Richard Fortunato Cantanhede').
	cliente(23,'Felix Macena Boga').
	cliente(24,'Hoorain Vilarinho Neves').
	cliente(25,'Isaura Salgado Mafra').
	cliente(26,'Liliane Lemos Camacho').
	cliente(27,'Lui Roriz Piteira').
	cliente(28,'Flor Morao Anhaia').
	cliente(29,'Isis Queiroga Teves').
	cliente(30,'Milton Junqueira Maior').

%------------------------------------------------------------------------------
% Extensao do predicado estafeta: IdEstafeta, Nome -> {V,F}
	
	estafeta(1,'Beatriz').
	estafeta(2,'Mario').
	estafeta(3,'Julia').
	estafeta(4,'Maria').
	estafeta(5,'Joao').
	estafeta(6,'Larissa').
	estafeta(7,'Jose').
	estafeta(8,'Eduarda').
	estafeta(9,'Manuel').
	estafeta(10,'Helena').

%------------------------------------------------------------------------------
% Extensao do predicado entrega: IdEntrega, IdEstafeta, IdCliente,
% IdEncomenda, Freguesia, MeioTransposte, Preco, Data, Classificacao -> {V,F}
%	
%	entrega(1,7,29,47,30,2,9,data(2014,11,2),5).
%	entrega(2,7,18,5,5,1,11,data(2009,9,11),0).
%	entrega(3,9,14,4,14,2,13,data(2008,3,6),5).
%	entrega(4,3,27,36,27,3,11,data(2003,7,5),5).
%	entrega(5,9,13,58,31,1,6,data(2002,1,19),2).
%	entrega(6,9,24,9,29,1,13,data(2018,12,2),5).
%	entrega(7,2,1,17,13,2,7,data(2020,11,17),5).
%	entrega(8,4,29,32,26,3,12,data(2006,7,18),2).
%	entrega(9,1,7,18,13,3,5,data(2003,10,27),5).
%	entrega(10,4,8,1,10,1,8,data(2014,6,21),5).
%	entrega(11,10,15,25,15,3,10,data(2001,5,2),0).
%	entrega(12,5,20,7,13,2,8,data(2005,5,1),0).
%	entrega(13,9,10,46,11,1,5,data(2013,4,4),2).
%	entrega(14,2,25,48,14,2,13,data(2009,6,14),2).
%	entrega(15,9,26,29,24,1,10,data(2017,8,26),1).
%	entrega(16,5,22,19,6,2,8,data(2005,11,3),1).
%	entrega(17,2,14,66,35,3,12,data(2020,8,4),1).
%	entrega(18,9,18,64,16,2,11,data(2004,10,26),1).
%	entrega(19,1,11,45,19,2,7,data(2006,8,2),3).
%	entrega(20,4,13,2,34,2,11,data(2019,7,26),4).
%	entrega(21,3,10,8,23,2,11,data(2012,8,22),1).
%	entrega(22,9,25,30,4,2,9,data(2005,2,23),2).
%	entrega(23,1,14,55,5,1,12,data(2012,12,11),2).
%	entrega(24,6,14,67,20,3,10,data(2003,4,2),2).
%	entrega(25,9,7,71,18,3,8,data(2017,10,22),3).
%	entrega(26,2,23,27,35,3,8,data(2019,1,14),3).
%	entrega(27,8,2,68,20,3,8,data(2004,2,14),1).
%	entrega(28,10,30,26,10,1,9,data(2008,12,25),1).
%	entrega(29,7,1,42,11,2,9,data(2016,4,13),1).
%	entrega(30,2,26,44,35,2,8,data(2005,7,15),5).
%	entrega(31,8,14,59,36,1,11,data(2001,4,23),0).
%	entrega(32,5,18,15,29,2,11,data(2016,12,22),2).
%	entrega(33,9,2,33,31,3,12,data(2004,6,19),5).
%	entrega(34,1,12,21,37,3,9,data(2018,11,13),5).
%	entrega(35,3,19,10,36,1,10,data(2009,1,12),3).
%	entrega(36,5,30,16,7,3,13,data(2003,10,1),5).
%	entrega(37,1,6,23,18,3,12,data(2021,10,16),0).
%	entrega(38,9,27,28,14,2,7,data(2021,1,15),3).
%	entrega(39,5,26,56,1,3,10,data(2005,7,4),4).
%	entrega(40,4,22,3,11,2,8,data(2013,11,23),1).
%	entrega(41,1,10,43,6,1,6,data(2012,3,21),1).
%	entrega(42,8,11,11,35,1,13,data(2006,1,4),3).
%	entrega(43,8,14,34,5,2,7,data(2018,2,23),5).
%	entrega(44,1,2,70,23,1,8,data(2003,6,7),0).
%	entrega(45,2,26,54,10,1,12,data(2020,7,4),3).
%	entrega(46,6,4,50,24,3,9,data(2021,3,7),4).
%	entrega(47,7,27,39,31,3,10,data(2007,4,20),1).
%	entrega(48,4,17,61,25,3,7,data(2001,10,26),2).
%	entrega(49,6,29,65,16,1,11,data(2003,8,1),4).
%	entrega(50,9,22,20,26,3,11,data(2004,10,1),0).
%	entrega(51,4,10,62,22,2,13,data(2011,9,18),3).
%	entrega(52,4,17,31,4,3,12,data(2020,11,6),4).
%	entrega(53,1,24,69,18,1,13,data(2017,4,7),2).
%	entrega(54,2,22,24,3,2,6,data(2014,6,15),0).
%	entrega(55,7,9,6,33,2,10,data(2001,6,18),1).
%	entrega(56,4,25,51,10,3,12,data(2009,3,22),0).
%	entrega(57,5,23,40,23,3,12,data(2012,5,14),5).
%	entrega(58,2,6,14,15,3,6,data(2008,1,18),0).
%	entrega(59,10,28,35,8,3,8,data(2008,12,1),2).
%	entrega(60,3,28,57,3,3,12,data(2000,5,12),5).
%	entrega(61,10,28,13,8,1,8,data(2005,4,28),2).
%	entrega(62,10,5,60,5,3,11,data(2011,7,1),2).
%	entrega(63,2,2,63,8,2,12,data(2021,2,21),0).
%	entrega(64,4,7,72,37,2,10,data(2012,12,2),5).
%	entrega(65,3,27,53,1,3,7,data(2004,4,11),1).
%	entrega(66,9,24,41,15,1,12,data(2006,3,26),5).
%	entrega(67,6,7,37,18,2,12,data(2003,11,11),3).
%	entrega(68,9,14,12,17,1,10,data(2011,2,23),2).
%	entrega(69,9,30,22,37,2,8,data(2017,4,10),2).
%	entrega(70,9,25,38,3,2,8,data(2001,8,27),2).
%	entrega(71,6,16,49,14,2,12,data(2013,6,17),3).
%	entrega(72,2,26,52,37,2,8,data(2017,5,25),3).
%
%------------------------------------------------------------------------------
% Extensao do predicado encomenda: IdEncomenda, Peso, Volume, Prazo -> {V,F}
	
	encomenda(1,4,12,2).
	encomenda(2,17,3,0).
	encomenda(3,14,14,0).
	encomenda(4,14,5,0).
	encomenda(5,5,1,6).
	encomenda(6,15,11,0).
	encomenda(7,13,1,24).
	encomenda(8,9,8,0).
	encomenda(9,4,10,24).
	encomenda(10,2,2,0).
	encomenda(11,3,13,0).
	encomenda(12,1,11,6).
	encomenda(13,5,6,24).
	encomenda(14,30,9,0).
	encomenda(15,8,5,2).
	encomenda(16,25,2,24).
	encomenda(17,18,11,2).
	encomenda(18,31,4,2).
	encomenda(19,15,5,24).
	encomenda(20,69,8,6).
	encomenda(21,21,5,2).
	encomenda(22,16,15,24).
	encomenda(23,28,5,0).
	encomenda(24,15,10,6).
	encomenda(25,35,2,24).
	encomenda(26,2,13,6).
	encomenda(27,54,1,24).
	encomenda(28,16,2,6).
	encomenda(29,5,15,2).
	encomenda(30,8,6,24).
	encomenda(31,36,3,2).
	encomenda(32,45,4,2).
	encomenda(33,28,11,6).
	encomenda(34,17,12,24).
	encomenda(35,40,14,24).
	encomenda(36,59,10,0).
	encomenda(37,10,12,2).
	encomenda(38,14,5,24).
	encomenda(39,41,15,24).
	encomenda(40,43,3,24).
	encomenda(41,5,14,24).
	encomenda(42,19,14,0).
	encomenda(43,2,2,2).
	encomenda(44,15,9,24).
	encomenda(45,17,7,0).
	encomenda(46,3,15,2).
	encomenda(47,11,10,6).
	encomenda(48,13,1,24).
	encomenda(49,7,1,0).
	encomenda(50,40,5,2).
	encomenda(51,34,7,0).
	encomenda(52,8,13,2).
	encomenda(53,23,11,2).
	encomenda(54,4,2,6).
	encomenda(55,4,15,0).
	encomenda(56,47,1,0).
	encomenda(57,34,5,0).
	encomenda(58,1,2,6).
	encomenda(59,1,6,2).
	encomenda(60,33,1,0).
	encomenda(61,37,1,24).
	encomenda(62,6,3,0).
	encomenda(63,17,12,2).
	encomenda(64,10,4,2).
	encomenda(65,1,8,6).
	encomenda(66,21,2,0).
	encomenda(67,29,10,2).
	encomenda(68,24,14,24).
	encomenda(69,2,15,6).
	encomenda(70,2,7,2).
	encomenda(71,34,9,2).
	encomenda(72,13,9,24).

%------------------------------------------------------------------------------
% Extensao do predicado freguesia: IdFreguesia, Nome -> {V,F}
%	
%	freguesia(1,'Adaufe').
%	freguesia(2,'Arentim e Cunha').
%	freguesia(3,'Braga (Maximinos, Se e Cividade)').
%	freguesia(4,'Braga (Sao Jose de Sao Lazaro e Sao Joao do Souto)').
%	freguesia(5,'Braga (Sao Vicente)').
%	freguesia(6,'Braga (Sao Vitor)').
%	freguesia(7,'Cabreiros e Passos (Sao Juliao)%').
%	freguesia(8,'Celeiros, Aveleda e Vimieiro').
%	freguesia(9,'Crespos e Pousada').
%	freguesia(10,'Escudeiros e Penso (Santo Estevao e Sao Vicente)').
%	freguesia(11,'Espinho').
%	freguesia(12,'Esporoes').
%	freguesia(13,'Este (Sao Pedro e Sao Mamede)').
%	freguesia(14,'Ferreiros e Gondizalves').
%	freguesia(15,'Figueiredo').
%	freguesia(16,'Gualtar').
%	freguesia(17,'Guisande e Oliveira (Sao Pedro)%').
%	freguesia(18,'Lamas').
%	freguesia(19,'Lomar e Arcos').
%	freguesia(20,'Merelim (Sao Paio), Panoias e Parada de Tibaes').
%	freguesia(21,'Merelim (Sao Pedro) e Frossos').
%	freguesia(22,'Mire de Tibaes').
%	freguesia(23,'Morreira e Trandeiras').
%	freguesia(24,'Nogueira, Fraiao e Lamacaes').
%	freguesia(25,'Nogueiro e Tenoes').
%	freguesia(26,'Padim da Graca').
%	freguesia(27,'Palmeira').%
%	freguesia(28,'Pedralva').
%	freguesia(29,'Priscos').
%	freguesia(30,'Real, Dume e Semelhe').
%	freguesia(31,'Ruilhe').
%	freguesia(32,'Santa Lucrecia de Algeriz e Navarra').
%	freguesia(33,'Sequeira').
%	freguesia(34,'Sobreposta').
%	freguesia(35,'Tadim').
%	freguesia(36,'Tebosa').
%	freguesia(37,'Vilaca e Fradelos').
%
%------------------------------------------------------------------------------
% Extensao do predicado meiotransporte: Id, Nome -> {V,F}
%	
%	meiotransporte(1, 'Bicicleta').
%	meiotransporte(2, 'Moto').
%	meiotransporte(3, 'Carro').
%
%------------------------------------------------------------------------------
% Extensao do predicado emissaoCO2: IdMeioTransporte, Emissao -> {V,F}
	
	emissaoCO2(1, 0).
	emissaoCO2(2, 1).
	emissaoCO2(3, 2).


%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
%------------------------ FASE 2 ----------------------------------------------
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------



%------------------------------------------------------------------------------
% Extensao do predicado meiotransporte: Id, Nome, PesoMaximo, VelocidadeMedia -> {V,F}
	
	meiotransporte(1, 'Bicicleta', 5, 10).
	meiotransporte(2, 'Moto', 20, 35).
	meiotransporte(3, 'Carro', 100, 25).

%------------------------------------------------------------------------------
% Extensao do predicado freguesia: IdFreguesia, Nome, Latitute, Longitude -> {V,F}

	freguesia(1,'Adaufe',0.4383,0.9489).
	freguesia(2,'Arentim e Cunha',0.94,1.596).
	freguesia(3,'Braga (Maximinos, Se e Cividade)',1.1225,2.7568).
	freguesia(4,'Braga (Sao Jose de Sao Lazaro e Sao Joao do Souto)',1.1261,4.1897).
	freguesia(5,'Braga (Sao Vicente)',1.2085,6.301).
	freguesia(6,'Braga (Sao Vitor)',1.5918,0.8097).
	freguesia(7,'Cabreiros e Passos (Sao Juliao)',1.7116,7.5212).
	freguesia(8,'Celeiros, Aveleda e Vimieiro',1.7768,2.966).
	freguesia(9,'Crespos e Pousada',1.9147,1.7137).
	freguesia(10,'Escudeiros e Penso (Santo Estevao e Sao Vicente)',2.126,4.1565).
	freguesia(11,'Espinho',2.4415,7.2023).
	freguesia(12,'Esporoes',2.7191,0.4443).
	freguesia(13,'Este (Sao Pedro e Sao Mamede)',2.8405,2.8119).
	freguesia(14,'Ferreiros e Gondizalves',3.0696,7.1551).
	freguesia(15,'Figueiredo',3.2291,4.3643).
	freguesia(16,'Gualtar',3.3898,2.0411).
	freguesia(17,'Guisande e Oliveira (Sao Pedro)',3.5989,8.5864).
	freguesia(18,'Lamas',3.7229,6.9269).
	freguesia(19,'Lomar e Arcos',3.744,5.1471).
	freguesia(20,'Merelim (Sao Paio), Panoias e Parada de Tibaes',3.8123,1.7985).
	freguesia(21,'Merelim (Sao Pedro) e Frossos',4.0087,3.4117).
	freguesia(22,'Mire de Tibaes',4.2968,0.7412).
	freguesia(23,'Morreira e Trandeiras',4.5383,4.9335).
	freguesia(24,'Nogueira, Fraiao e Lamacaes',4.5546,6.306).
	freguesia(25,'Nogueiro e Tenoes',4.8527,2.5645).
	freguesia(26,'Padim da Graca',5.0028,6.0935).
	freguesia(27,'Palmeira',5.1715,1.8698).
	freguesia(28,'Pedralva',5.2797,4.1017).
	freguesia(29,'Priscos',5.4442,8.249).
	freguesia(30,'Real, Dume e Semelhe',5.8895,6.8902).
	freguesia(31,'Ruilhe',6.0913,5.6227).
	freguesia(32,'Santa Lucrecia de Algeriz e Navarra',6.8295,8.5013).
	freguesia(33,'Sequeira',7.2952,5.1364).
	freguesia(34,'Sobreposta',7.3511,6.9462).
	freguesia(35,'Tadim',7.4215,9.3894).
	freguesia(36,'Tebosa',8.3477,5.6008).
	freguesia(37,'Vilaca e Fradelos',9.6438,6.0795).

%------------------------------------------------------------------------------
% Extensao do predicado entrega: IdEntrega, IdEstafeta, IdCliente,
% IdEncomenda, Freguesia, MeioTransposte, Preco, Data, Classificacao -> {V,F}

	entrega(1,7,29,47,30,2,9,data(2014,11,2),5).
	entrega(2,7,18,5,5,1,11,data(2014,11,2),0).
	entrega(3,9,14,4,14,2,13,data(2014,11,2),5).
	entrega(4,3,27,36,27,3,11,data(2014,11,2),5).
	entrega(5,9,13,58,31,1,6,data(2014,11,2),2).
	entrega(6,9,24,9,29,1,13,data(2014,11,2),5).
	entrega(7,2,1,17,13,2,7,data(2014,11,2),5).
	entrega(8,4,29,32,26,3,12,data(2014,11,2),2).
	entrega(9,1,7,18,13,3,5,data(2014,11,2),5).
	entrega(10,4,8,1,10,1,8,data(2014,11,2),5).
	entrega(11,10,15,25,15,3,10,data(2014,11,2),0).
	entrega(12,5,20,7,13,2,8,data(2014,11,2),0).
	entrega(13,9,10,46,11,1,5,data(2014,11,2),2).
	entrega(14,2,25,48,14,2,13,data(2014,11,2),2).
	entrega(15,9,26,29,24,1,10,data(2014,11,2),1).
	entrega(16,5,22,19,6,2,8,data(2014,11,2),1).
	entrega(17,2,14,66,35,3,12,data(2014,11,2),1).
	entrega(18,9,18,64,16,2,11,data(2014,11,2),1).
	entrega(19,1,11,45,19,2,7,data(2014,11,2),3).
	entrega(20,4,13,2,34,2,11,data(2014,11,2),4).
	entrega(21,3,10,8,23,2,11,data(2014,11,2),1).
	entrega(22,9,25,30,4,2,9,data(2014,11,2),2).
	entrega(23,1,14,55,5,1,12,data(2014,11,2),2).
	entrega(24,6,14,67,20,3,10,data(2014,11,2),2).
	entrega(25,9,7,71,18,3,8,data(2014,11,2),3).
	entrega(26,2,23,27,35,3,8,data(2014,11,2),3).
	entrega(27,8,2,68,20,3,8,data(2014,11,2),1).
	entrega(28,10,30,26,10,1,9,data(2014,11,2),1).
	entrega(29,7,1,42,11,2,9,data(2014,11,2),1).
	entrega(30,2,26,44,35,2,8,data(2014,11,2),5).
	entrega(31,8,14,59,36,1,11,data(2014,11,2),0).
	entrega(32,5,18,15,29,2,11,data(2014,11,2),2).
	entrega(33,9,2,33,31,3,12,data(2014,11,2),5).
	entrega(34,1,12,21,37,3,9,data(2014,11,2),5).
	entrega(35,3,19,10,36,1,10,data(2014,11,2),3).
	entrega(36,5,30,16,7,3,13,data(2014,11,2),5).
	entrega(37,1,6,23,18,3,12,data(2014,11,2),0).
	entrega(38,9,27,28,14,2,7,data(2014,11,2),3).
	entrega(39,5,26,56,1,3,10,data(2014,11,2),4).
	entrega(40,4,22,3,11,2,8,data(2014,11,2),1).
	entrega(41,1,10,43,6,1,6,data(2014,11,2),1).
	entrega(42,8,11,11,35,1,13,data(2014,11,2),3).
	entrega(43,8,14,34,5,2,7,data(2014,11,2),5).
	entrega(44,1,2,70,23,1,8,data(2014,11,2),0).
	entrega(45,2,26,54,10,1,12,data(2014,11,2),3).
	entrega(46,6,4,50,24,3,9,data(2014,11,2),4).
	entrega(47,7,27,39,31,3,10,data(2014,11,2),1).
	entrega(48,4,17,61,25,3,7,data(2014,11,2),2).
	entrega(49,6,29,65,16,1,11,data(2014,11,2),4).
	entrega(50,9,22,20,26,3,11,data(2014,11,2),0).
	entrega(51,4,10,62,22,2,13,data(2014,11,2),3).
	entrega(52,4,17,31,4,3,12,data(2014,11,2),4).
	entrega(53,1,24,69,18,1,13,data(2014,11,2),2).
	entrega(54,2,22,24,3,2,6,data(2014,11,2),0).
	entrega(55,7,9,6,33,2,10,data(2014,11,2),1).
	entrega(56,4,25,51,10,3,12,data(2014,11,2),0).
	entrega(57,5,23,40,23,3,12,data(2014,11,2),5).
	entrega(58,2,6,14,15,3,6,data(2014,11,2),0).
	entrega(59,10,28,35,8,3,8,data(2014,11,2),2).
	entrega(60,3,28,57,3,3,12,data(2014,11,2),5).
	entrega(61,10,28,13,8,1,8,data(2014,11,2),2).
	entrega(62,10,5,60,5,3,11,data(2014,11,2),2).
	entrega(63,2,2,63,8,2,12,data(2014,11,2),0).
	entrega(64,4,7,72,37,2,10,data(2014,11,2),5).
	entrega(65,3,27,53,1,3,7,data(2014,11,2),1).
	entrega(66,9,24,41,15,1,12,data(2014,11,2),5).
	entrega(67,6,7,37,18,2,12,data(2014,11,2),3).
	entrega(68,9,14,12,17,1,10,data(2014,11,2),2).
	entrega(69,9,30,22,37,2,8,data(2014,11,2),2).
	entrega(70,9,25,38,3,2,8,data(2014,11,2),2).
	entrega(71,6,16,49,14,2,12,data(2014,11,2),3).
	entrega(72,2,26,52,37,2,8,data(2014,11,2),3).

%------------------------------------------------------------------------------
% Extensao do predicado caminho: Origem, Destino, Comprimento -> {V,F}

	caminho(1,2,2.26).
	caminho(1,3,5.35).
	caminho(1,6,3.21).
	caminho(2,3,3.25).
	caminho(2,6,2.82).
	caminho(2,9,2.72).
	caminho(3,4,3.96).
	caminho(3,6,5.54).
	caminho(3,8,1.9).
	caminho(3,9,3.62).
	caminho(4,5,5.84).
	caminho(4,8,3.83).
	caminho(4,10,2.77).
	caminho(5,7,3.65).
	caminho(5,10,6.45).
	caminho(5,11,4.22).
	caminho(5,15,7.74).
	caminho(5,19,7.71).
	caminho(6,9,2.66).
	caminho(6,12,3.28).
	caminho(7,11,2.2).
	caminho(7,17,5.99).
	caminho(8,9,3.48).
	caminho(8,10,3.43).
	caminho(8,13,2.97).
	caminho(9,12,4.16).
	caminho(9,13,3.97).
	caminho(9,16,4.18).
	caminho(10,11,8.47).
	caminho(10,13,4.21).
	caminho(10,14,8.69).
	caminho(10,15,3.1).
	caminho(10,18,8.84).
	caminho(11,14,1.74).
	caminho(11,15,8.15).
	caminho(11,17,4.99).
	caminho(11,19,6.73).
	caminho(12,13,6.56).
	caminho(12,16,4.79).
	caminho(12,19,4.81).
	caminho(12,22,4.44).
	caminho(13,15,4.43).
	caminho(13,16,2.62).
	caminho(13,21,3.63).
	caminho(14,17,4.22).
	caminho(14,18,1.91).
	caminho(15,19,2.59).
	caminho(15,21,3.4).
	caminho(16,20,4.79).
	caminho(17,18,4.6).
	caminho(17,29,5.19).
	caminho(18,19,4.92).
	caminho(18,24,2.87).
	caminho(19,21,4.86).
	caminho(19,23,2.28).
	caminho(19,24,3.91).
	caminho(20,21,2.49).
	caminho(20,22,3.22).
	caminho(20,25,3.57).
	caminho(21,23,4.46).
	caminho(21,25,3.31).
	caminho(21,28,4).
	caminho(22,27,3.95).
	caminho(23,24,3.8).
	caminho(23,26,3.46).
	caminho(23,28,3.08).
	caminho(24,26,1.37).
	caminho(24,29,5.91).
	caminho(25,27,2.11).
	caminho(25,28,4.41).
	caminho(26,29,6.09).
	caminho(26,30,3.3).
	caminho(26,31,3.28).
	caminho(28,31,4.77).
	caminho(29,30,3.96).
	caminho(29,32,3.89).
	caminho(30,31,3.55).
	caminho(30,32,5.16).
	caminho(30,34,4.05).
	caminho(31,33,3.59).
	caminho(31,34,5.05).
	caminho(32,34,4.54).
	caminho(32,35,2.95).
	caminho(33,34,5.01).
	caminho(33,36,3.18).
	caminho(34,36,4.63).
	caminho(34,37,6.78).
	caminho(36,37,3.82).

	conectado(O,D,C) :- caminho(O,D,C) ; caminho(D,O,C).
