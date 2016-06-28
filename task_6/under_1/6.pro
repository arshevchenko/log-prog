genlist(_,  _, 0,  []).
genlist(ELM, STEP, COUNT, [ELM | RES]) :- ELM1 is ELM + STEP
                                        , COUNT1 is COUNT - 1
                                        , genlist(ELM1, STEP, COUNT1, RES).

insert(H, L, 0, [H | L]).
insert(ELM, [H | T], POS, [H | T1]) :- P > 0
                                 , P1 is P - 1
                                 , insert(ELM, T, P1, T1).

test :- genlist(3, 3, 6, L1)
      , write('Position: ')
      , read(POS)
      , write('\nElement:')
      , read(ELM)
      , insert(ELM, L, POS, RES)
      , writeln(RES).
