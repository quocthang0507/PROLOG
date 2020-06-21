domains
	i = integer
	ds = i*
predicates
	Search(i, ds)
clauses
	Search(X, [X|_]).
	Search(X, [_|T]):-
		Search(X, T).