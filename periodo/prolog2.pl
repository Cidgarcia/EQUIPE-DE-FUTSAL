%sig@


aluno(maria).
aluno(joao).
aluno(marcos).
aluno(junior).
aluno(leticia).
aluno(matheus).
aluno(ana).

masc(marcos).
masc(junior).
masc(matheus).
masc(joao).

fem(maria).
fem(leticia).
fem(ana).

idade(ana, 23).
idade(marcos, 24).
idade(junior, 18).
idade(matheus, 20).
idade(leticia, 22).
idade(maria, 19).


disciplina(fisica1).
disciplina(calculo1).
disciplina(logica).
disciplina(quimica).
disciplina(algebra).
disciplina(eletronica_digital).


matricula(junior):- disciplina(fisica1), disciplina(calculo1), disciplina(quimica).
matricula(matheus):- disciplina(fisica1), disciplina(calculo1), disciplina(eletronica_digital).
matricula(maria):- disciplina(fisica1), disciplina(logica), disciplina(quimica).
matricula(marcos):- disciplina(fisica1), disciplina(logica), disciplina(algebra).
matricula(joao):- disciplina(fisica1), disciplina(calculo1), disciplina(quimica), disciplina(eletropnicqa_digital).



% Regra para mostrar as disciplinas de um aluno
mostrar_disciplinas(Aluno) :-
    matricula(Aluno),
    disciplina(Disciplina),
    participa_da_disciplina(Aluno, Disciplina).
