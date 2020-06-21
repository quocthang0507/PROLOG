domains
	i = integer
	ds = i*
predicates
	dodai(ds, i, i)
clauses
	dodai([], KQ, KQ). % dodai([], KQ, KQ1) :- !, KQ1 = KQ.
	dodai([_|Duoi], Phu, KQ) :- T = Phu + 1,
		dodai(Duoi, T, KQ).
