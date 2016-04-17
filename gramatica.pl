% Reglas gramaticales
oracion(o(GN, GV)) --> g_nominal(GN), g_verbal(GV).

g_nominal(gn(N)) --> nombre(N).
g_nominal(gn(D, N)) --> determinante(D), nombre(N).
g_nominal(gn(N, A)) --> nombre(N), adjetivo(A).
g_nominal(gn(D, N, A)) --> determinante(D), nombre(N), adjetivo(A).
g_nominal(gn(N, GP)) --> nombre(N), g_proposicional(GP).
g_nominal(gn(D, N, GP)) --> determinante(D), nombre(N),

g_proposicional(GP).
g-nominal(gn(D, GP)) --> determinante(D), g_proposicional(GP).

g_verbal(gv(V)) --> verbo(V).
g_verbal(gv(V, GN)) --> verbo(V), g_nominal(GN).
g_verbal(gv(V, A)) --> verbo(V), adjetivo(A).
g_verbal(gv(V, GP)) --> verbo(V), g_preposicional(GP).

g_proposicional(gp(PN, GV)) --> pronombre(PN), g_verbal(GV).
g_preposicional(gp(P, GN)) --> preposicion(P), g_nominal(GN).
