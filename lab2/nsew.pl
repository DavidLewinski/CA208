/* FACTS */

north(a, f).
north(b, g).
north(c, h).
north(d, i).
north(e, j).

north(f, k).
north(g, l).
north(h, 'm').
north(i, n).
north(j, o).

north(k, p).
north(l, 'q').
north('m', r).
north(n, 's').
north(o, t).

east(a, b).
east(b, c).
east(c, d).
east(d, e).

east(f, g).
east(g, h).
east(h, i).
east(i, j).

east(k, l).
east(l, 'm').
east('m', n).
east(n, o).

east(p, 'q').
east('q', r).
east(r, 's').
east('s', t).

/* RELATIONSHIPS */

norths(X, Y) :- north(Y, X).
norths(X, Z) :- north(Y, X), norths(Y, Z).

souths(X, Y) :- north(X, Y).
souths(X, Z) :- north(X, Y), souths(Y, Z).

easts(X, Y) :- east(X, Y).
easts(X, Z) :- east(X, Y), easts(Y, Z).

wests(X, Y) :- east(Y, X).
wests(X, Z) :- east(Y, X), wests(Y, Z).

neasts(X, NE) :- norths(X, Y), easts(Y, NE).
nwests(X, NW) :- norths(X, Y), wests(Y, NW).

seasts(X, SE) :- souths(X, Y), easts(Y, SE).
swests(X, SW) :- souths(X, Y), wests(Y, SW).
