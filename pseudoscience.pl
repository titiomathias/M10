% https://swish.swi-prolog.org/
% Let's verify if is pseudoscience or not!

conteudo(neurociencia, ciencia).
conteudo(psicologia, ciencia).
conteudo(algebra, ciencia).
conteudo(calculo, ciencia).
conteudo(criminologia, ciencia).
conteudo(linguagemcorporal, ciencia).
conteudo(ufologia, pseudociencia).
conteudo(microexpressoes, pseudociencia).
conteudo(parapsicologia, pseudociencia).
conteudo(psicanalise, pseudociencia).

repercussao(neurociencia, alta).
repercussao(psicologia, media).
repercussao(algebra, baixa).
repercussao(calculo, baixa).
repercussao(criminologia, media).
repercussao(linguagemcorporal, alta).
repercussao(ufologia, alta).
repercussao(microexpressoes, alta).
repercussao(parapsicologia, baixa).
repercussao(psicanalise, media).

pseudociencia(X) :- conteudo(X,pseudociencia).
pseudociencias_famosas(X) :- repercussao(X, alta), conteudo(X, pseudociencia).
ciencia(X) :- conteudo(X, ciencia).
ciencias_famosas(X) :- repercussao(X, alta), conteudo(X, ciencia).

% pseudociencia(X).
% pseudociencias_famosas(X)
% ciencia(X)
% ciencias_famosas(X)
