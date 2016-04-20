%Diccionario
determinante(det(det_1), m, sn) --> [el].
determinante(det(det_1), f, sn) --> [la].
determinante(det(det_1), m, pl) --> [los].
determinante(det(det_1), f, pl) --> [las].
determinante(det(det_2), m, sn) --> [un].
determinante(det(det_2), f, sn) --> [una].
determinante(det(det_3), m, pl) --> [unos].
determinante(det(det_3), f, pl) --> [unas].
determinante(det(det_4), m, pl) --> [ellos].
determinante(det(det_5), m, sn) --> [tu].
determinante(det(det_5), f, sn) --> [tu].
determinante(det(det_6), m, sn) --> [mi].
determinante(det(det_6), f, sn) --> [mi].

nombre(n(n_1), m, sn) --> [hombre].
nombre(n(n_2), f, sn) --> [mujer].
nombre(n(n_3), m, sn) --> [juan].
nombre(n(n_4), f, sn) --> [maria].
nombre(n(n_5), f, sn) --> [manzana].
nombre(n(n_6), f, pl) --> [manzanas].
nombre(n(n_7), m, sn) --> [gato].
nombre(n(n_8), m, sn) --> [raton].
nombre(n(n_9), m, sn) --> [alumno].
nombre(n(n_10), m, pl) --> [ratones].
nombre(n(n_11), f, sn) --> [universidad].
nombre(n(n_12), m, sn) --> [perro].
nombre(n(n_13), m, sn) --> [jardin].
nombre(n(n_14), m, sn) --> [vecino].
nombre(n(n_15), m, sn) --> [canario].
nombre(n(n_16), m, sn) --> [periodico].
nombre(n(n_17), m, sn) --> [cafe].
nombre(n(n_18), m, sn) --> [oscar, wilde].
nombre(n(n_19), m, sn) --> [el, fantasma, de, canterville].

verbo(v(v_1), sn) --> [ama].
verbo(v(v_2), sn) --> [come].
verbo(v(v_13), sn) --> [comes].
verbo(v(v_3), sn) --> [estudia].
verbo(v(v_4), sn) --> [era].
verbo(v(v_6), sn) --> [es].
verbo(v(v_7), pl) --> [comen].
verbo(v(v_8), sn) --> [persiguio].
verbo(v(v_14), pl) --> [vimos].
verbo(v(v_9), sn) --> [canta].
verbo(v(v_10), sn) --> [toma].
verbo(v(v_11), sn) --> [lee].
verbo(v(v_12), sn) --> [escribio].

adjetivo(a(a_1), f, sn) --> [roja].
adjetivo(a(a_2), m, sn) --> [negro].
adjetivo(a(a_3), m, sn) --> [gris].
adjetivo(a(a_3), f, sn) --> [gris].
adjetivo(a(a_4), m, sn) --> [pequeño].
adjetivo(a(a_5), m, sn) --> [grande].
adjetivo(a(a_5), f, sn) --> [grande].
adjetivo(a(a_6), m, sn) --> [bien].
adjetivo(a(a_7), m, sn) --> [amarillo].
adjetivo(a(a_8), m, sn) --> [delgado].
adjetivo(a(a_9), f, sn) --> [alta].

preposicion(p(p_1)) --> [a].
preposicion(p(p_2)) --> [en].

pronombre(pn(pn_1)) --> [que].

adverbio(adv(adv_1)) --> [ayer].
adverbio(adv(adv_2)) --> [muy].

conjuncion(cnj(cnj_1)) --> [y].
