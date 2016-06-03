имя('Петя').
имя('Таня').
имя('Лена').

животное('собака').
животное('хомячок').
животное('кошка').

гуляет(X, Y) :- имя(X)
              , животное(Y)
              , (X = 'Петя', not(Y = 'кошка'), not(Y = 'хомяк')
              ;  X = 'Таня', Y = 'кошка'
              ;  X = 'Лена', not(Y = 'кошка')).

решение(X1, X2, X3, Y1, Y2, Y3) :- гуляет(X1, Y1)
                                , гуляет(X2, Y2)
                                , гуляет(X3, Y3)
                                , Y1 \= Y2, Y2 \= Y3, Y1 \= Y3.

get_solve :- X1 = 'Петя', X2 = 'Таня', X3 = 'Лена'
           , решение(X1, X2, X3, Y1, Y2, Y3)
           , write(X1), write(' - '), writeln(Y1)
           , write(X2), write(' - '), writeln(Y2)
           , write(X3), write(' - '), writeln(Y3).
