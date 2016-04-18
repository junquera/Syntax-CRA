:-[ diccionario,
    gramatica].

main:-
    write('Escriba la oracion: '),
    read(O),
    atomic_list_concat(L, ' ', O),
    oracion(X, L, []),
    write(X),
    nl,
    false.
empieza:-
    repeat,
    main.
