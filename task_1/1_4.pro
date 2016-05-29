увлекается('Катя','теннис').
увлекается('Виктор','теннис').
увлекается('Виктор','хоккей').
увлекается('Андрей','хоккей').
увлекается('Олег','хоккей').
увлекается('Ольга','теннис').
увлекается('Катя','шахматы').
увлекается('Олег','шахматы').
женщина('Катя').
женщина('Ольга').
мужчина('Виктор').
мужчина('Андрей').
мужчина('Олег').

chesses_w(X) :- женщина(X), увлекается(X, 'шахматы').
task_a :- findall(X, chesses_w(X), L), writeln(L).

hockey_m(X) :- мужчина(X), увлекается(X, 'хоккей').
task_b :- findall(X, hockey_m(X), L), writeln(L).

couple_t(X, Y) :- мужчина(X), женщина(Y),  увлекается(X, 'теннис'),
                  увлекается(Y, 'теннис'), write(X), write(' + '), writeln(Y).
task_c :- findall([X, Y], couple_t(X, Y), L), writeln(L).
