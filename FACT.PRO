domains
	i = integer
predicates
	factor(i, i)
clauses
	factor(0, 1) :- !.
	factor(N, KQ) :- N1=N-1, 
		factor(N1, KQ1), KQ=KQ1*N. %KQ1*N=KQ