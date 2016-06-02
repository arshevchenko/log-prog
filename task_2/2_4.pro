рейс(1, 'Москва', 12, 45, 'ежедн').
рейс(2, 'Саратов', 20, 12, 'чет').
рейс(3, 'Лос Анджелес', 10, 30, 'нечет').
рейс(4, 'Токио', 13, 25, 'чет').
рейс(5, 'Питер', 8, 20, 'ежедн').
рейс(6, 'Неаполис', 11, 24, 'нечет').

task_a :- рейс(X, Y, Z, C, V)
        , write(X), write(' ')
        , write(Y), write(' ')
        , write(Z:C), write(' ')
        , write(V), write(' ')
        , nl, fail.

task_b(X) :- рейс(Y, X, Z, C, 'чет')
           , write(Y), write(' ')
           , write(Z:C), write(' ')
           , nl, fail.

task_b(X, Y) :- рейс(Q, W, E, R, 'ежедн')
              , E * 60 + R =< X * 60 + Y
              , write(Q), write(' ')
              , write(W), write(' ')
              , write(E:R), write(' ')
              , nl, fail.
