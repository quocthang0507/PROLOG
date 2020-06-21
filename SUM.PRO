domains
	i = integer
	ds = i*
predicates
	tong(ds, i)
clauses
	tong([], 0). % !.
	tong([H|Duoi], KQ) :- Tong(Duoi, Phu),
		Phu + H = KQ.
