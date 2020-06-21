domains
	i = integer
predicates
	LuyThua(i, i, i)
clauses
	LuyThua(_, 0, 1) :- !.
	LuyThua(X, N, KQ) :- N1 = N-1,
		LuyThua(X, N1, KQ1),
		X*KQ1 = KQ.