:-[ diccionario_es,
    gramatica_es,
    diccionario_en,
    gramatica_en].

main:-
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
    repeat,
    main.

%% el hombre come una manzana 
% ellos comen manzanas
% tu comes una manzana roja
% juan ama a maria
% el gato grande come un raton gris
% juan estudia en la universidad
% el alumno ama la universidad
% el perro persiguio un gato negro en el jardin
% la universidad es grande
% el hombre que vimos ayer es mi vecino
% el canario amarillo canta muy bien
% juan toma un cafe y lee el periodico
% juan es delgado y maria es alta
% oscar wilde escribio el fantasma de canterville
