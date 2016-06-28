genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM + STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

test :- genlist(1, 2, 5, L1)
      , genlist(2, 2, 5, L2)
      , append(L1, L2, R)
      , writeln(R).
