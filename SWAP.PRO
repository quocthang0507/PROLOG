domains
	i = integer
	ds = i*
predicates
	Noi(ds, ds, ds)
	HoanVi(ds, ds)
clauses
	Noi([], L2, L2).
	Noi([H1|T1], L2, [H1|T3]) :- Noi(T1, L2, T3).

	HoanVi([], []).
	HoanVi(L, [H|DuoiHV]) :-
		Noi(Gi, [H|T], L), !,
		Noi(Gi, T, ConLai),
		HoanVi(ConLai, DuoiHV).