genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM + STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

test :- read(N)
      , genlist(10, 5, N, L1)
      , writeln(L1).
