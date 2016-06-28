genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM - STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

mult(0, []).
mult(MLT, [X|Y]) :- sum(MLTP, Y), MLT is MLTP * X.

test :- genlist(7, 2, 4, L1)
      , mult(RES, L1)
      , writeln(RES).
