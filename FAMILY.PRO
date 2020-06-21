domains
    s = symbol
predicates
    Me(s, s)
    Me(s)
    Cha(s, s)
    LamCha(s)
    ChaHoacMe(s, s)
    Nam(s)
    ChaMe(s, s, s)
    Nu(s)
    Nguoi(s)
    OngNoi(s, s)
clauses
    Me(ma_1, con_1).
    Me(ma_2, con_2).
    Me(M) :- Me(M, _).
    Cha(ba_1, con_1).
    Cha(ba_2, con_2).
    LamCha(B) :- Cha(B, _).
    ChaHoacMe(BM, Con) :- Me(BM, Con); Cha(BM, Con).
    ChaMe(B, M, C) :- Cha(B, C), Me(M, C).
    Nam(con_1).
    Nam(A) :- LamCha(A). %If A la ba_1, ba_2 thi la Nam
    %Nu(A) :- not(Nam(A)). %A phai la mot gia tri, khong phai bien tu do
    Nguoi(A) :- LamCha(A); Me(A); ChaHoacMe(_, A).
    Nu(A) :- Nguoi(A), not(Nam(A)).
    