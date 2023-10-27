progenitor(jose, joao).
progenitor(jose, ana).
progenitor(maria, joao).
progenitor(maria, ana).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(joao, mario).
progenitor(helena, carlos).
progenitor(mario, carlos).

homem(jose).
homem(joao).
homem(mario).
homem(carlos).
mulher(ana).
mulher(maria).
mulher(helena).
mulher(joana).

% X é progenitor de qualquer coisa.
progenitores(X) :- progenitor(X, _).

% X é irmã de Y. Logo, X é mulher e seu progenitor é o mesmo de Y.
irma(X, Y) :- mulher(X), progenitor(Z, X), progenitor(Z, Y).
% X é irmão de Y. Logo, X é homem e seu progenitor é o mesmo de Y.
irmao(X, Y) :- homem(X), progenitor(Z, X), progenitor(Z, Y).

% X é descendente de Y. Logo, Y é progenitor de X.
descendente(X, Y) :- progenitor(Y, X).

% X é mãe de Y. Logo, X é uma mulher e progenitor de Y.
mae(X, Y) :- mulher(X), progenitor(X, Y).
% X é pai de Y. Logo, X é um homem e progenitor de Y.
pai(X, Y) :- homem(X), progenitor(X, Y).

% X é avô ou avó de Y. Logo, O filho de X é pai de Y.
avo(X, Y) :- progenitor(X, Z), progenitor(Z, Y).

% X é tio de Y. Logo, X é irmão do pai ou mãe de Y.
tio(X, Y) :- irmao(X, Z), pai(Z, Y).
tio(X, Y) :- irmao(X, Z), mae(Z, Y).
tio(X, Y) :- irma(X, Z), pai(Z, Y).
tio(X, Y) :- irma(X, Z), mae(Z, Y).

% X é primo de Y. Logo o pai de X é irmão ou irmã do pai de Y.
primo(X, Y) :- irmao(A, B), progenitor(A, X), progenitor(B, Y).
primo(X, Y) :- irma(A, B), progenitor(A, X), progenitor(B, Y).
