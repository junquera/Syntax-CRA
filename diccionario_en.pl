%Diccionario
determ(det(det_1), _, sn) --> [the].
determ(det(det_2), c, sn) --> [a].
determ(det(det_2), v, sn) --> [an].
determ(det(det_3), _, pl) --> [some].
determ(det(det_4), _, pl) --> [they].
determ(det(det_5), _, _) --> [you].
determ(det(det_6), _, sn) --> [my].

noun(n(n_1), m, sn, c) --> [man].
noun(n(n_2), f, sn, c) --> [woman].
noun(n(n_3), m, sn, c) --> [john].
noun(n(n_4), f, sn, c) --> [mary].
noun(n(n_5), f, sn, v) --> [apple].
noun(n(n_6), f, pl, c) --> [some, apples].
noun(n(n_7), m, sn, c) --> [cat].
noun(n(n_8), m, sn, c) --> [mouse].
noun(n(n_9), m, sn, c) --> [student].
noun(n(n_10), m, pl, c) --> [mouses].
noun(n(n_11), f, sn, c) --> [university].
noun(n(n_12), m, sn, c) --> [dog].
noun(n(n_13), m, sn, c) --> [garden].
noun(n(n_14), m, sn, c) --> [neighbour].
noun(n(n_15), m, sn, c) --> [canary].
noun(n(n_16), m, sn, c) --> [newspaper].
noun(n(n_17), m, sn, c) --> [coffe].
noun(n(n_18), m, sn, v) --> [oscar, wilde].
noun(n(n_19), m, sn, c) --> [the, canterville, ghost].

verb(v(v_1), sn) --> [loves].
verb(v(v_2), sn) --> [eats].
verb(v(v_13),sn) --> [eat].
verb(v(v_3), sn) --> [studies].
verb(v(v_4), sn) --> [was].
verb(v(v_6), sn) --> [is].
verb(v(v_7), pl) --> [eat].
verb(v(v_8), sn) --> [chased].
verb(v(v_14), pl) --> [we, saw].
verb(v(v_9), sn) --> [sings].
verb(v(v_10), sn) --> [has].
verb(v(v_11), sn) --> [reads].
verb(v(v_12), sn) --> [wrote].

adjetive(a(a_1), f, sn, c) --> [red].
adjetive(a(a_2), m, sn, c) --> [black].
adjetive(a(a_3), m, sn, c) --> [grey].
adjetive(a(a_4), m, sn, c) --> [little].
adjetive(a(a_5), m, sn, c) --> [big]. % No podemos diferencia entre 'big' y 'large' 
adjetive(a(a_6), m, sn, c) --> [well].
adjetive(a(a_7), m, sn, c) --> [yellow].
adjetive(a(a_8), m, sn, c) --> [thin].
adjetive(a(a_9), f, sn, c) --> [tall].

preposition(p(p_1)) --> [].
preposition(p(p_2)) --> [in]. % No podemos diferencia entre 'in' y 'at'

pronoun(pn(pn_1)) --> [that].

adverb(adv(adv_1)) --> [yesterday].
adverb(adv(adv_2)) --> [very].

conjunction(cnj(cnj_1)) --> [and].
