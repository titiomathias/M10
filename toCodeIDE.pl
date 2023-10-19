% Made in https://swish.swi-prolog.org/

linguagemDeProgramacao(python).
linguagemDeProgramacao(c).
linguagemDeProgramacao(java).
linguagemDeProgramacao(php).
linguagemDeProgramacao(ruby).

linguagemDeMarcacao(html).
linguagemDeMarcacao(xml).
linguagemDeMarcacao(xhtml).
linguagemDeMarcacao(css).

ide(vscode, html).
ide(vscode, xml).
ide(vscode, xhtml).
ide(vscode, css).
ide(sublime, html).
ide(sublime, css).
ide(sublime, xhtml).
ide(sublime, xml).
ide(sublime, php).
ide(pycharm, python).
ide(intellij, java).
ide(codeblocks, c).

poo(X, Y) :-
    ide(X, Y),
    linguagemDeProgramacao(Y).

marcacao(X, Y) :-
    ide(X, Y),
    linguagemDeMarcacao(Y).
