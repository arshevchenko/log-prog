fib_n(1, 1) :- !.
fib_n(2, 1) :- !.
fib_n(N, F) :- N > 2
             , N1 is N - 1
             , N2 is N - 2
             , fib_n(N1, F1)
             , fib_n(N2, F2)
             , F is F1 + F2.

fib(X) :- fib_n(X, F), writeln(F).
