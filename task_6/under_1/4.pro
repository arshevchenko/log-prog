genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM + STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

delete(ELM, [ELM|RES], RES).
delete(ELM, [HEAD|L], [HEAD|R]) :- delete(ELM, L, R).

test :- genlist(2, 2, 5, L)
      , read(ELM)
      , delete(ELM, L, R)
      , writeln(R).
