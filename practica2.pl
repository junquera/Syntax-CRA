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
%Diccionario
determinante --> [el].
determinante --> [la].
determinante --> [un].
determinante --> [una].
nombre --> [hombre].
nombre --> [mujer].
nombre --> [juan].
nombre --> [maría].
nombre --> [manzanas].
nombre --> [manzana].
nombre --> [gato].
nombre --> [ratón].
nombre --> [alumno].
nombre --> [ratones].
nombre --> [universidad].
verbo --> [ama].
verbo --> [come].
verbo --> [estudia].
verbo --> [era].
verbo --> [cazó].
adjetivo --> [roja].
adjetivo --> [negro].
adjetivo --> [grande].
adjetivo --> [gris].
adjetivo --> [pequeño].
preposicion --> [en].
preposicion --> [a].
pronombre --> [que].


