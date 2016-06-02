tower(0, _, _, _) :- !.
tower(N, T1, T2, T3) :- N1 is N - 1
                      , tower(N1, T1, T3, T2)
                      , print_tower(T1, T2)
                      , tower(N1, T3, T2, T1).

print_tower(X, Y) :- write(X), write(' on '), write(Y), nl.

start(N) :- tower(N, '1', '2', '3').
