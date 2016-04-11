% Reglas gramaticales
oracion --> g_nominal, g_verbal.
g_nominal --> nombre.
g_nominal --> determinante, nombre.
g_nominal --> nombre, adjetivo.
g_nominal --> determinante, nombre, adjetivo.
g_nominal --> nombre, g_proposicional.
g_nominal --> determinante, nombre, g_proposicional.
g-nominal --> determinante, g_proposicional.

g_verbal --> verbo.
g_verbal --> verbo, g_nominal.
g_verbal --> verbo, adjetivo.
g_verbal --> verbo, g_preposicional.

g_proposicional --> pronombre, g_verbal.
g_preposicional --> preposicion, g_nominal.



