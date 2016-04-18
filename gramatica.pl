% Reglas gramaticales
oracion(o(GN, GV)) --> g_nominal(GN, _, NUM), g_verbal(GV, NUM).

g_nominal(gn(N), G, NUM) --> nombre(N, G, NUM).
g_nominal(gn(D, N), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM).
g_nominal(gn(N, A), G, NUM) --> nombre(N, G, NUM), adjetivo(A, G, NUM).
g_nominal(gn(D, N, A), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), adjetivo(A, G, NUM).
g_nominal(gn(D, GP), G, NUM) --> determinante(D, G, NUM), g_proposicional(GP).
g_nominal(gn(N, GP), G, NUM) --> nombre(N, G, NUM), g_proposicional(GP).
g_nominal(gn(D, N, GP), G, NUM) --> determinante(D, G, NUM), nombre(N, G, NUM), g_proposicional(GP).
g_proposicional(gp(PN, GV)) --> pronombre(PN), g_verbal(GV, _).
g_preposicional(gp(P, GN)) --> preposicion(P), g_nominal(GN, _, _).

g_verbal(gv(V), NUM) --> verbo(V,NUM).
g_verbal(gv(V, GN), NUM) --> verbo(V,NUM), g_nominal(GN, _, NUM).
g_verbal(gv(V, A), NUM) --> verbo(V,NUM), adjetivo(A, _, NUM).
g_verbal(gv(V, GP), NUM) --> verbo(V,NUM), g_preposicional(GP).
