% Ingles

%sg si es singular y pl si es plural
%c = si el nombre empieza con consonante
%v = si el nombre empieza con vocal
determinante(det(det_1), c, sg) --> [the].%el
determinante(det(det_1), v, sg) --> [the].%el
determinante(det(det_2), c, sg) --> [the].%la
determinante(det(det_2), v, sg) --> [the].%la
determinante(det(det_3), v, sg) --> [an].%a
determinante(det(det_4), c, sg) --> [a].%un
determinante(det(det_4), v, sg) --> [a].%una
determinante(det(det_5), c, pl) --> [they].
determinante(det(det_5), v, pl) --> [they].
determinante(det(det_6), c, pl) --> [you].
determinante(det(det_6), v, pl) --> [you].
determinante(det(det_7), v, pl) --> [we].
determinante(det(det_7), c, pl) --> [we].
determinante(det(det_8), c, sg) --> [my].%mi
determinante(det(det_8), v, sg) --> [my].%mi

%sg si es singular y pl si es plural
%c = si el nombre empieza con consonante
%v = si el nombre empieza con vocal
nombre(n(n_1),c, sg) --> [man].
nombre(n(n_2),c, sg) --> [john].
nombre(n(n_3),c, sg) --> [mary].
nombre(n(n_4),v, sg) --> [apple].
nombre(n(n_5),v, pl) --> [apples].
nombre(n(n_6),c, sg) --> [cat].
nombre(n(n_7),c, sg) --> [mouse].
nombre(n(n_8),c, sg) --> [student].
nombre(n(n_9),c, pl) --> [mouses].
nombre(n(n_10),v, sg) --> [university].
nombre(n(n_11),c, sg) --> [dog].
nombre(n(n_12),c, sg) --> [neighbour].
nombre(n(n_13),c, sg) --> [garden].
nombre(n(n_14),c, sg) --> [canary].
nombre(n(n_15),c, sg) --> [newspaper].
nombre(n(n_16),c, sg) --> [coffee].
nombre(n(n_17),v, sg) --> [oscar, wilde].
nombre(n(n_18),c, sg) --> [the, canterville, gosht].


%sg si es singular y pl si es plural
verbo(v(v_1),sg) --> [loves].
verbo(v(v_2),pl) --> [eat]. %come
verbo(v(v_3),sg) --> [eats].%comen
verbo(v(v_3),pl) --> [eats].%comes
verbo(v(v_4),sg) --> [studies].
verbo(v(v_5),sg) --> [was].
verbo(v(v_6),pl) --> [hunted].
verbo(v(v_7),pl) --> [chased].
verbo(v(v_7),sg) --> [chased].
verbo(v(v_8),sg) --> [is].
verbo(v(v_9),pl) --> [saw].
verbo(v(v_10),sg) --> [sings].
verbo(v(v_11),sg) --> [has].
verbo(v(v_12),sg) --> [reads].
verbo(v(v_13),pl) --> [wrote].



adjetivo(a(a_1)) --> [red].
adjetivo(a(a_2)) --> [black].
adjetivo(a(a_3)) --> [grey].
adjetivo(a(a_4)) --> [large].
adjetivo(a(a_5)) --> [good].
adjetivo(a(a_6)) --> [amarillo].
adjetivo(a(a_7)) --> [thin].
adjetivo(a(a_8)) --> [tall].


preposicion(p(p_1)) --> [in].%en


pronombre(pn(pn_1)) --> [that].

adverbio(adv(adv_1)) --> [yesterday].
adverbio(adv(adv_2)) --> [very].

conjuncion(cnj(cnj_1)) --> [and].