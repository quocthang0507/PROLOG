domains
	i = integer
predicates
	Sinh_1_So(i)
	ThuongNguyen(i, i, i)
clauses
	Sinh_1_So(0).
	Sinh_1_So(Sau) :- Sinh_1_So(Truoc), Sau = Truoc + 1.
	ThuongNguyen(B, C, T) :- Sinh_1_So(T),
		T*C<=B,
		(T+1)*C>B, !.