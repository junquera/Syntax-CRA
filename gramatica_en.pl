% Reglas gramaticales
sentence(o(GN, GV)) --> nominal_g(GN, _, NUM), verbal_g(GV, NUM).
sentence(o(GV)) --> verbal_g(GV, _).

nominal_g(gn(N), G, NUM) --> noun(N, G, NUM).
nominal_g(gn(N), G, NUM) --> determ(N, G, NUM).
nominal_g(gn(D, N), G, NUM) --> determ(D, G, NUM), noun(N, G, NUM).
nominal_g(gn(N, A), G, NUM) --> noun(N, G, NUM), adjetive(A, G, NUM).
nominal_g(gn(D, N, A), G, NUM) --> determ(D, G, NUM), noun(N, G, NUM), adjetive(A, G, NUM).
nominal_g(gn(D, GP), G, NUM) --> determ(D, G, NUM), propositional_g(GP).
nominal_g(gn(N, GP), G, NUM) --> noun(N, G, NUM), propositional_g(GP).
nominal_g(gn(D, N, A, GP), G, NUM) --> determ(D, G, NUM), noun(N, G, NUM), adjetive(A, G, NUM), prepositional_g(GP).
nominal_g(gn(D, N, GP), G, NUM) --> determ(D, G, NUM), noun(N, G, NUM), prepositional_g(GP).
nominal_g(gn(D, N, GP), G, NUM) --> determ(D, G, NUM), noun(N, G, NUM), propositional_g(GP).

% propositional_g(gp(PN)).
propositional_g(gp(PN, GV)) --> pronoun(PN), verbal_g(GV, _).

prepositional_g(gp(P, GN)) --> preposition(P), nominal_g(GN, _, _).
prepositional_g(gp(P, GV)) --> preposition(P), verbal_g(GV, _).
prepositional_g(gp(ADV, GN)) --> adverb(ADV), nominal_g(GN, _, _).
prepositional_g(gp(ADV, GV)) --> adverb(ADV), verbal_g(GV, _).

adverbial_g(ga(ADV)) --> adverb(ADV).
adverbial_g(ga(ADV, A)) --> adverb(ADV), adjetive(A, _, _).
adverbial_g(ga(ADV, A, GN)) --> adverb(ADV), adjetive(A, G, NUM), nominal_g(GN, G, NUM).

complex(cnj(CNJ, O)) --> conjunction(CNJ), oracion(O).

verbal_g(gv(V), NUM) --> verb(V,NUM).
verbal_g(gv(V, GN, CMP), NUM) --> verb(V,NUM), nominal_g(GN, _, _), complex(CMP).
verbal_g(gv(V, GN), NUM) --> verb(V,NUM), nominal_g(GN, _, NUM).
verbal_g(gv(V, A), NUM) --> verb(V,NUM), adjetive(A, _, NUM).
verbal_g(gv(V, A, GA), NUM) --> verb(V,NUM), adjetive(A, _, NUM), adverbial_g(GA).
verbal_g(gv(V, GP), NUM) --> verb(V,NUM), prepositional_g(GP).
verbal_g(gv(V, GA), NUM) --> verb(V,NUM), adverbial_g(GA).
verbal_g(gv(V, A, CMP), NUM) --> verb(V,NUM), adjetive(A, _, NUM), complex(CMP).
verbal_g(gv(V, CMP), NUM) --> verb(V,NUM), complex(CMP).
