delete(D, L, R) :- !.
delete(D, [H|L], [H|R]) :- delete(D, L, R).

test(X, R) :- delete(X, ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'], R)
         , writeln(R).
