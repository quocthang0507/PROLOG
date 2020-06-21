domains
    s = symbol
predicates
    Dad(s, s) % Dad(Dad, Child)
    Mom(s, s) % Mom(Mom, Child)
    Sibling(s, s) % Sibling(Elder, Younger)
    Child(s, s) % Child(Child, Parent)
    Grandchild(s, s) % Grandchild(Grandchild, Grandparent)
    Grandparent(s, s) % Grandparent(Grandparent, Grandchild)
    Uncle(s, s) % Uncle(Uncle, s)
    Aunt(s, s) % Aunt(Aunt, s)
    Cousin(s, s)
    Mate(s, s) % Mate(Husband, Wife)
    Male(s)
    Female(s)
    RS(s, s, s)
clauses
    Dad(grandfather1, dad2).
    Dad(grandfather1, mom1).
    Dad(grandfather1, aunt).
    Dad(grandfather2, dad1).
    Dad(grandfather2, mom2).
    Dad(grandfather2, uncle).
    Dad(dad1, boy1).
    Dad(dad1, girl1).
    Dad(dad2, boy2).
    Dad(dad2, girl2).
    Dad(uncle, boy3).

    Mom(grandmother1, dad2).
    Mom(grandmother1, mom1).
    Mom(grandmother1, aunt).
    Mom(grandmother2, dad1).
    Mom(grandmother2, mom2).
    Mom(grandmother2, uncle).
    Mom(mom1, boy1).
    Mom(mom1, girl1).
    Mom(mom2, boy2).
    Mom(mom2, girl2).
    Mom(aunt, girl3).

    Male(grandfather1).
    Male(grandfather2).
    Male(dad1).
    Male(dad2).
    Male(uncle).
    Male(boy1).
    Male(boy2).
    Male(boy3).

    Female(grandmother1).
    Female(grandmother2).
    Female(mom1).
    Female(mom2).
    Female(aunt).
    Female(girl1).
    Female(girl2).
    Female(girl3).

    % Quan he khac
    Child(X, Y) :- Dad(Y, X); Mom(Y, X).
    Mate(X, Y) :- Child(Z, X), Child(Z, Y).
    Sibling(X, Y) :- Dad(A, X), Dad(A, Y), Mom(B, X), Mom(B, Y), not(X = Y).
    Grandparent(X, Y) :- Dad(X, Z), Dad(Z, Y); Mom(X, Z), Mom(Z, Y); 
        Dad(X, Z), Mom(Z, Y); Mom(X, Z), Dad(Z, Y).
    Grandchild(X, Y) :- Grandparent(Y, X).
    Uncle(X, Y) :- Male(X), Sibling(X, Z), Dad(Z, Y); 
        Male(X), Sibling(X, Z), Mom(Z, Y).
    Aunt(X, Y) :- Female(X), Sibling(X, Z), Dad(Z, Y); 
        Female(X), Sibling(X, Z), Mom(Z, Y).
    Cousin(X, Y) :- Uncle(Z, X), Dad(Z, Y); Aunt(Z, X), Mom(Z, Y);
        Uncle(Z, Y), Dad(Z, X); Aunt(Z, Y), Mom(Z, X).
    RS(X, Y, R) :- 
        Dad(X, Y), R = "Dad-Child";
        Mom(X, Y), R = "Mom-Child";
        Child(X, Y), R = "Child-Parent";
        Grandparent(X, Y), R = "Grandparent-Grandchild";
        Grandchild(X, Y), R = "Grandchild-Grandparent";
        Uncle(X, Y), R = "Uncle-ChildOfSibling";
        Aunt(X, Y), R = "Aunt-ChildOfSibling";
        Sibling(X, Y), R = "Sibling";
        Cousin(X, y), R = "Cousin";
        Mate(X, Y), R = "HusbandAndWife".