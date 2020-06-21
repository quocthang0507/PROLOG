domains
	i = integer
predicates
	fibonacci(i, i)
clauses
	fibonacci(1, 1) :-!.
	fibonacci(2, 1) :-!.
	fibonacci(N, Nhieu) :- N1 = N-1, N2= N-2,
		fibonacci(N1, May),
		fibonacci(N2, Nao),
		Nhieu = May + Nao.