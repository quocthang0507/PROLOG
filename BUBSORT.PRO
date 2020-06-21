domains
	r = real
	ds = r*
predicates
	Noi(ds, ds, ds)
	BS(ds, ds)
clauses
	Noi([], L, L).
	Noi([H1|T1], L2, [H1|T3]) :-
		Noi(T1, L2, T3).
	BS(L, Kq) :-
		Noi(Truoc, [X, Y|Sau], L),
		X > Y, !,
		Noi(Truoc, [Y, X|Sau], LM),
		BS(LM, Kq).
	BS(L, L).