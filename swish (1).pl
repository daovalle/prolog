child(john,sue). child(john,sam).
child(jane,sue). child(jane,sam).
child(sue,george). child(sue,gina).
male(john). male(sam). male(george).
female(sue). female(jane). female(june). female(gina).
parent(Y,X) :- child(X,Y).
father(Y,X) :- child(X,Y), male(Y).
mother(X,Z) :- female(X), parent(X,Z).
daughter(F,X) :- female(F), parent(X,F).
son(M,X) :- male(M), parent(X,M).
opp_sex(X,Y) :- male(X), female(Y).
opp_sex(Y,X) :- male(X), female(Y).
grand_father(X,Z) :- father(X,Y), parent(Y,Z).
grand_mother(X,Z) :- mother(X,Y), parent(Y,Z).
