size([], 0).
size([_| T], R) :- list_size(T, R1)
                 , R is R1 + 1.

insert(H, L, 0, [H | L]).
insert(ELM, [H | T], POS, [H | T1]) :- P > 0
                                     , P1 is P - 1
                                     , insert(ELM, T, P1, T1).

genins(_, _, -1) :- !.
genins(ELM, L, POS) :- insert(ELM, L, POS, NL)
                  , write(NL)
                  , write('\n')
                  , POS1 is POS - 1
                  , task(ELM, L, POS1).

test :- read(ELM)
      , L is [1, 2, 3, 4, 5]
      , size(L, S)
      , genins(ELM, L, S).
