% Made in https://swish.swi-prolog.org/
% Which IDE X I can use to programming POO OR MARKUP LANGUAGE in Y language?

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

markup(X, Y) :-
    ide(X, Y),
    linguagemDeMarcacao(Y).


% ide(X, html)
% poo(sublime, X)
% markup(vscode, X)
