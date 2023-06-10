%% Hechos

lenguaje_de_marcado('HTML').
lenguaje_de_hojas_de_estilo('CSS').
lenguaje_de_programacion('JavaScript').
lenguaje_de_programacion('Python').
framework('Django', 'Python').
microframework('Flask', 'Python').
entorno_de_ejecucion('Node.js', 'JavaScript').
framework('Express.js', 'Node.js').
base_de_datos('MongoDB').
lenguaje_de_consulta('SQL').


%% Reglas

puede_crear_paginas_web(Tecnologia) :- lenguaje_de_marcado(Tecnologia).
puede_estilizar_paginas_web(Tecnologia) :- lenguaje_de_hojas_de_estilo(Tecnologia).
puede_hacer_paginas_web_interactivas(Tecnologia) :- lenguaje_de_programacion(Tecnologia).
puede_usarse_para_desarrollo_del_lado_del_servidor(Tecnologia) :- lenguaje_de_programacion(Tecnologia).
facilita_desarrollo_en(Lenguaje, Tecnologia) :- framework(Tecnologia, Lenguaje).
facilita_desarrollo_con_menos_funcionalidades_en(Lenguaje, Tecnologia) :- microframework(Tecnologia, Lenguaje).
puede_ejecutar_codigo_fuera_de_navegador(Lenguaje, Tecnologia) :- entorno_de_ejecucion(Tecnologia, Lenguaje).
puede_almacenar_datos_para_aplicaciones_web(Tecnologia) :- base_de_datos(Tecnologia).
puede_interactuar_con_bases_de_datos(Tecnologia) :- lenguaje_de_consulta(Tecnologia).
es_una_pagina_web_dinamica(Pagina) :- utiliza(Pagina, 'HTML'), utiliza(Pagina, 'CSS'), utiliza(Pagina, Lenguaje), lenguaje_de_programacion(Lenguaje).
