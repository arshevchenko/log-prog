delete(D, [H|L], [H|R]) :- delete(D, L, R).
delete(D, [D|R], R).


test(X) :- delete(X, ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'], R)
         , write(R).
