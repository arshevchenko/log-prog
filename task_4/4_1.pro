pow_n(X, 0, 1) :- !.
pow_n(X, N, Y) :- N1 = N - 1
                , pow(X, N1, Y1)
                , Y = Y1 * X.

pow(X, N) :- pow_n(X, N, Y), format('Y = ~d', [Y]), nl.
