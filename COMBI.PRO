domains
	i = integer
predicates
	combination(i, i, i)
clauses
	combination(0, _, 1) :- !.
	combination(K, K, 1) :- !.
	combination(K, N, KQ) :- N1=N-1, K1=K-1,
		combination(K, N1, KQ1),
		combination(K1, N1, KQ2),
		KQ1+KQ2=KQ. %KQ=KQ1+KQ2