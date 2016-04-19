% Reglas gramaticales
oracion(o(GN, GV)) --> g_nominal(GN, _, NUM), g_verbal(GV, NUM).
oracion(o(GV)) --> g_verbal(GV, _).

g_nominal(gn(N), G, NUM) --> nombre(N, G, NUM).
g_nominal(gn(N), G, NUM) --> determinante(N, G, NUM).
g_nominal(gn(D, N), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM).
g_nominal(gn(N, A), G, NUM) --> nombre(N, G, NUM), adjetivo(A, G, NUM).
g_nominal(gn(D, N, A), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), adjetivo(A, G, NUM).
g_nominal(gn(D, GP), G, NUM) --> determinante(D, G, NUM), g_proposicional(GP).
g_nominal(gn(N, GP), G, NUM) --> nombre(N, G, NUM), g_proposicional(GP).
g_nominal(gn(D, N, A, GP), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), adjetivo(A, G, NUM), g_preposicional(GP).
g_nominal(gn(D, N, GP), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), g_preposicional(GP).
g_nominal(gn(D, N, GP), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), g_proposicional(GP).

% g_proposicional(gp(PN)).
g_proposicional(gp(PN, GV)) --> pronombre(PN), g_verbal(GV, _).

g_preposicional(gp(P, GN)) --> preposicion(P), g_nominal(GN, _, _).
g_preposicional(gp(P, GV)) --> preposicion(P), g_verbal(GV, _).
g_preposicional(gp(ADV, GN)) --> adverbio(ADV), g_nominal(GN, _, _).
g_preposicional(gp(ADV, GV)) --> adverbio(ADV), g_verbal(GV, _).

g_adverbial(ga(ADV)) --> adverbio(ADV).
g_adverbial(ga(ADV, A)) --> adverbio(ADV), adjetivo(A, _, _).
g_adverbial(ga(ADV, A, GN)) --> adverbio(ADV), adjetivo(A, G, NUM), g_nominal(GN, G, NUM).

compuesta(cnj(CNJ, O)) --> conjuncion(CNJ), oracion(O).

g_verbal(gv(V), NUM) --> verbo(V,NUM).
g_verbal(gv(V, GN, CMP), NUM) --> verbo(V,NUM), g_nominal(GN, _, _), compuesta(CMP).
g_verbal(gv(V, GN), NUM) --> verbo(V,NUM), g_nominal(GN, _, NUM).
g_verbal(gv(V, A), NUM) --> verbo(V,NUM), adjetivo(A, _, NUM).
g_verbal(gv(V, A, GA), NUM) --> verbo(V,NUM), adjetivo(A, _, NUM), g_adverbial(GA).
g_verbal(gv(V, GP), NUM) --> verbo(V,NUM), g_preposicional(GP).
g_verbal(gv(V, GA), NUM) --> verbo(V,NUM), g_adverbial(GA).
g_verbal(gv(V, A, CMP), NUM) --> verbo(V,NUM), adjetivo(A, _, NUM), compuesta(CMP).
g_verbal(gv(V, CMP), NUM) --> verbo(V,NUM), compuesta(CMP).
