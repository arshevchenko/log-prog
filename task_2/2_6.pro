слово('конфета', 'candy').
слово('компьютор', 'computer').
слово('книга', 'book').
слово('воздух', 'air').
слово('часы', 'watch').
слово('фотография', 'photo').

all :- слово(X, Y)
     , write(X)
     , write(' - ')
     , write(Y)
     , nl, fail.

to_ru(X) :- слово(Y, X), writenl(Y).
to_en(X) :- слово(X, Y), writenl(Y).
