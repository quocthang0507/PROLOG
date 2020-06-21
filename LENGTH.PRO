domains
	i = integer
	ds = i*
predicates
	dodai(ds, i)
clauses
	dodai([], 0).
	dodai([_|Duoi], KQ) :- dodai(Duoi, KQ1), KQ1 + 1 = KQ.
