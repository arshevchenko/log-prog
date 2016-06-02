task_1(X) :- X \= 2, Y = (X * X + 1)/(X - 2)
           , format('Y = ~f', [Y]), nl
           ; format('Деление на ноль', []), nl.

task_2(X, Y) :- X \= Y, S = 2 * (X * X + Y * Y)/(X - Y)
              , format('S = ~f', [S]), nl
              ; format('Деление на ноль', []), nl.

task_3(X, Y) :- C = X + Y/2, format('C = ~f', [C]), nl.

task_4(X) :- Y = X mod 2,  Y =:= 0
           , format('Число является четным',[]), nl
           ; format('Число является нечетным',[]), nl.

task_5(X, A, B) :- X >= A, X =< B
                 , format('Данное число попадает в промежуток',[]), nl
                 ; format('Данное число не попадает в промежуток', []), nl.

task_6(X, Y, Z) :- X < Y, X < Z, format('Минимальное число ~d', [X]), nl
                 ; Y < X, Y < Z, format('Минимальное число ~d', [Y]), nl
                 ; Z < X, Z < Y, format('Минимальное число ~d', [Z]), nl.

task_7(X, Y, Z) :- X > Y, X > Z, format('Максимальное число ~d', [X]), nl
                 ; Y > X, Y > Z, format('Максимальное число ~d', [Y]), nl
                 ; Z > X, Z > Y, format('Максимальное число ~d', [Z]), nl.
