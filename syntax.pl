:-[ diccionario_es,
    gramatica_es,
    diccionario_en,
    gramatica_en].

manual:-
    write('Escriba la oracion: '),
    read(O),
    atomic_list_concat(L, ' ', O),
    oracion(X, L, []),
    write(X),
    nl,
    sentence(X, I, []),
    write(I),
    nl,
    false.

empieza:-
    FRASES = ['el hombre come una manzana',
    'ellos comen manzanas',
    'tu comes una manzana roja',
    'juan ama a maria',
    'el gato grande come un raton gris',
    'juan estudia en la universidad',
    'el alumno ama la universidad',
    'el perro persiguio un gato negro en el jardin',
    'la universidad es grande',
    'el hombre que vimos ayer es mi vecino',
    'el canario amarillo canta muy bien',
    'juan toma un cafe y lee el periodico',
    'juan es delgado y maria es alta',
    'oscar wilde escribio el fantasma de canterville'],
    prueba(FRASES).

prueba([]).
prueba([H|T]):-
    atomic_list_concat(L, ' ', H),
    write(L),
    nl,
    oracion(X, L, []),
    sentence(X, I, []),
    write(I),
    nl, nl,
    prueba(T).

% ellos comen manzanas
% tu comes una manzana roja
% el hombre come una manzana
% juan ama a maria
% el gato grande come un raton gris
% juan estudia en la universidad
% el alumno ama la universidad
% el perro persiguio un gato negro en el jardin
% el canario amarillo canta muy bien
% juan toma un cafe y lee el periodico
% juan es delgado y maria es alta
% oscar wilde escribio el fantasma de canterville
% el hombre que vimos ayer es mi vecino
% la universidad es grande -> Traducimos grande como big y debería ser large --> No pasa nada: http://forum.wordreference.com/threads/large-vs-big.675207/


% Z=..[oracion, X, [el, hombre, que, vimos, ayer, es, mi, vecino], []],call(Z).
