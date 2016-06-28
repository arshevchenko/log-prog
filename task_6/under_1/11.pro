genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM + STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

sum(0, []).
sum(SUM, [X|Y]) :- sum(SUMP, Y), SUM is SUMP + X.


test :- read(N)
      , genlist(10, 1, N, L1)
      , sum(RES, L1)
      , writeln(RES).
