domains
	r = real
	ds = r*
predicates
	Noi(ds, ds, ds)
	Tach(ds, r, ds, ds)
	QS(ds, ds)
clauses
	Tach([], _, [], []).
	Tach([H|T], Moc, [H|Be], Lon):-
		H < Moc, !, Tach(T, Moc, Be, Lon).
	Tach([H|T], Moc, Be, [H|Lon]):-
		Tach(T, Moc, Be, Lon).
	Noi([], L, L).
	Noi([H1|T1], L2, [H1|T3]):-
		Noi(T1, L2, T3).
	QS([], []).
	QS([H|T], Kq):-
		Tach(T, H, Thap, Cao),
		QS(Thap, Thap1),
		QS(Cao, Cao1),
		Noi(Thap1, [H|Cao1], Kq).
	