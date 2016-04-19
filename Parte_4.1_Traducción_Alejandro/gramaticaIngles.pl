sentence(s(N,V)) --> nom_p(N,_,NUM), verb(V,NUM).
sentence(o(GV)) --> g_verbal(GV,_).

nom_p(np(D,N),E, NUM) --> determinante(D,E,NUM), nombre(N,E,NUM).
nom_p(gn(D), E,NUM) --> determinante(D,E,NUM).
nom_p(gn(N), E,NUM) --> nombre(N,E,NUM).
nom_p(gn(N, A), E,NUM) -->adjetivo(A), nombre(N,E,NUM).
nom_p(gn(N, A, D), E,NUM) -->determinante(D,E,NUM), adjetivo(A), nombre(N,E,NUM).
nom_p(gn(N, GP), E,NUM) --> nombre(N,E,NUM), g_proposicional(GP).
nom_p(gn(D, N, GP), E,NUM) --> determinante(D,E,NUM), nombre(N,E,NUM), g_proposicional(GP).
nom_p(gn(D, N, GP, A), E,NUM) --> determinante(D,E,NUM), adjetivo(A), nombre(N,E,NUM), g_proposicional(GP).
nom_p(gn(D, N, A, GP), E,NUM) --> determinante(D,E,NUM), adjetivo(A),nombre(N,E,NUM), g_preposicional(GP).
nom_p(gn(D, N, GP), E,NUM) --> determinante(D,E,NUM), nombre(N,E,NUM), g_preposicional(GP).
nom_p(gn(N, GP),E,NUM) --> nombre(N,E,NUM), g_preposicional(GP).
nom_p(gn(GP), E,NUM) --> g_preposicional(GP).


%g_nominal(gn(D, GP), G, NUM) --> determinante(D, G, NUM), g_proposicional(GP).

% g_proposicional(gp(PN)).
g_proposicional(gp(PN, GV)) --> pronombre(PN), g_verbal(GV, _).
g_proposicional(gp(PN, GN)) --> pronombre(PN), nom_p(GN, _,_).

g_preposicional(gp(P, GN)) --> preposicion(P), nom_p(GN, _,_).
%g_preposicional(gp(P, GV)) --> preposicion(P), g_verbal(GV, _).
g_preposicional(gp(ADV, GN)) --> adverbio(ADV), nom_p(GN, _,_).
g_preposicional(gp(ADV, GV)) --> adverbio(ADV), g_verbal(GV, _).

g_adverbial(ga(ADV)) --> adverbio(ADV).
g_adverbial(ga(ADV, A)) --> adverbio(ADV), adjetivo(A).
g_adverbial(ga(ADV, A, GN)) --> adverbio(ADV), adjetivo(A), nom_p(GN, _,_).

compuesta(cnj(CNJ, O)) --> conjuncion(CNJ), sentence(O).

g_verbal(gv(V), NUM) --> verbo(V, NUM).
g_verbal(gv(V, GN, CMP), NUM) --> verbo(V, NUM), nom_p(GN, _,_), compuesta(CMP).
g_verbal(gv(V, GN), NUM) --> verbo(V, NUM), nom_p(GN,_,_).
g_verbal(gv(V, A), NUM) --> verbo(V, NUM), adjetivo(A).
g_verbal(gv(V, A, GA), NUM) --> verbo(V, NUM), adjetivo(A), g_adverbial(GA).
g_verbal(gv(V, GP), NUM) --> verbo(V, NUM), g_preposicional(GP).
g_verbal(gv(V, GA), NUM) --> verbo(V, NUM), g_adverbial(GA).
g_verbal(gv(V, A, CMP), NUM) --> verbo(V, NUM), adjetivo(A), compuesta(CMP).
g_verbal(gv(V, CMP), NUM) --> verbo(V, NUM), compuesta(CMP).