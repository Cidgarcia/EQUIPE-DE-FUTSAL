%fatos

atleta(gabriel, goleiro).
atleta(jo�o, piv�).
atleta(caio, ala_esquerdo).
atleta(jordan, ala_direito).
atleta(miguel, ala_direito).
atleta(felipe, piv�).
atleta(gustavo, goleiro).
atleta(milton, ala_esquerdo).
atleta(bernardo, fixo).
atleta(felix, fixo).

peso(gabriel, 70).
peso(jo�o, 60.5).
peso(caio, 69).
peso(jordan, 63).
peso(miguel, 61.7).
peso(felipe, 64.2).
peso(gustavo, 67.1).
peso(milton, 72).
peso(bernardo, 68.1).
peso(felix, 70).

idade(gabriel, 21).
idade(jo�o, 20).
idade(caio, 21).
idade(jordan, 19).
idade(miguel, 21).
idade(felipe, 21).
idade(gustavo, 23).
idade(milton, 18).
idade(bernardo, 20).
idade(felix, 21).

habilidade(gabriel, agilidade).
habilidade(jo�o, chute).
habilidade(caio, passe).
habilidade(jordan, drible).
habilidade(miguel, velocidade).
habilidade(felipe, chute).
habilidade(gustavo, flexibilidade).
habilidade(milton, drible).
habilidade(bernardo, passe).
habilidade(felix, passe).

timeSub21(sub, Time) :-
    atleta(Goleiro, goleiro), idade(Goleiro, Y),
    atleta(Pivo, piv�), idade(Pivo, Y),
    atleta(AlaEsquerdo, ala_esquerdo), idade(AlaEsquerdo, Y),
    atleta(AlaDireito, ala_direito), idade(AlaDireito, Y),
    atleta(Fixo, fixo), idade(Fixo, Y), Y == 21,
Time = [Goleiro, Pivo, AlaEsquerdo, AlaDireito, Fixo].

escala��o(ofensiva, Time) :-
    atleta(Goleiro, goleiro), habilidade(Goleiro, agilidade),
    atleta(Pivo, piv�), habilidade(Pivo, chute),
    atleta(AlaEsquerdo, ala_esquerdo), habilidade(AlaEsquerdo, drible),
    atleta(AlaDireito, ala_direito), habilidade(AlaDireito, velocidade),
    atleta(Fixo, fixo), habilidade(Fixo, passe),
Time = [Goleiro, Pivo, AlaEsquerdo, AlaDireito, Fixo].

% Base case: A m�dia de peso de uma lista vazia � 0.
media_peso([], 0).

% Regra recursiva: Calcula a m�dia de peso.
media_peso([Atleta|Resto], Media) :-
    peso(Atleta, Peso),
    media_peso(Resto, MediaResto),
    length([Atleta|Resto], NumAtletas),
    Media is (MediaResto * (NumAtletas - 1) + Peso) / NumAtletas.

%quest�o 1:	Liste todos os jogadores.
%findall(Jogador, atleta(Jogador, _), ListaJogadores).

%quest�o2:	Quem s�o os atletas que t�m a habilidade de drible?
%findall(Atleta, habilidade(Atleta, drible), ListaAtletas).

%quest�o 3: Monte uma escala��o de atletas de 21 anos
%timeSub21(sub, Time).

%quest�o 4: Qual a m�dia dos pesos?
% media_peso([gabriel, jo�o, caio, jordan, miguel, felipe, gustavo, milton, bernardo, felix], Media).

%quest�o 5: Monte uma escala��o que seja ofensiva.
%escala��o(ofensiva, Time).
