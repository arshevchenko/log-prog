sum(0, []).
sum(SUM, [X|Y]) :- sum(SUMP, Y), SUM is SUMP + X.

test :- sum(RES, [1, 2, 3, 4, 5])
      , writeln(RES).
