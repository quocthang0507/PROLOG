domains
	i = integer
	ds = i*
predicates
	noi(ds, ds, ds)
clauses
	noi([], L2, L2).
	noi([H1|T1], L2, [H1|T3]) :- noi(T1, L2, T3).