pessoa(ana).
pessoa(bia).
pessoa(ivo).
pessoa(lia).
pessoa(eva).
pessoa(ary).

sexo(ana, fem).
sexo(bia, fem).
sexo(ivo, masc).
sexo(lia, fem).
sexo(eva, fem).
sexo(ary, masc).

idade(ana, 23).
idade(bia, 19).
idade(ivo, 22).
idade(lia, 17).
idade(eva, 28).
idade(ary, 25).

altura(ana, 1.55).
altura(bia, 1.71).
altura(ivo, 1.80).
altura(lia, 1.85).
altura(eva, 1.75).
altura(ary, 1.72).

peso(ana, 56).
peso(bia, 61.3).
peso(ivo, 70.5).
peso(lia, 57.3).
peso(eva, 68.7).
peso(ary, 68.9).


%q1
%?- idade(X, Y), sexo(X, fem), Y >= 20.

%q2 peso(X, P), P < 65, altura(X, A), A >=1.70.

%q3 sexo(X, S
