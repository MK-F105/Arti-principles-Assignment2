
male(mark).
male(jacob).
male(bob).
male(chad).
male(khalid).
male(lucas).
male(rami).

female(amy).
female(suzie).
female(clara).
female(ophilia).
female(sally).
female(nora).
female(lily).
female(lucy).


parent(amy,clara).
parent(amy,jacob).
parent(mark,clara).
parent(mark,jacob).

parent(jacob,ophilia).
parent(suzie,ophilia).

parent(clara,sally).
parent(clara,khalid).
parent(bob,sally).
parent(bob,khalid).

parent(khalid,rami).
parent(nora,rami).

parent(ophilia,lily).
parent(ophilia,lucy).
parent(ophilia,lucas).
parent(chad,lily).
parent(chad,lucy).
parent(chad,lucas).



mother(X,Y) :-
    female(X),
    parent(X,Y).


father(X,Y) :-
    male(X),
    parent(X,Y).

sister(X,Y) :-
    female(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.

brother(X,Y) :-
    male(X),
    parent(P,X),
    parent(P,Y),
    X \= Y.












