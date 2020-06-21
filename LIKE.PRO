Domains
	Ai = symbol
Predicates
	Thich(Ai, Ai)
Clauses
	Thich("A", b).
	Thich(b, c).
	Thich(X, Z) :- Thich(X, Y), Thich(Y, Z).