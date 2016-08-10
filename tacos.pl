% Agente experto, encargador de cocinar tacos.

% HECHOS o funciones

%%     preparacion de la crema de taco
guisar(carne, sal).
licuar(chile).
licuar(cebolla).
licuar(ajo).
licuar(comino).
mezclar(guiso_carne,licuado_verduras).
mezclar(licuado_verduras, guiso_carne).

%%	coccion de taco
calentar(aceite).
rellenar(tortilla, crema_taco).
rellenar(crema_taco, tortilla).
tostar(taco_crudo).

%%	presentacion de taco
servir(taco_tostado, lechuga).
servir(taco_tostado, salsa).
servir(taco_tostado, queso).

%%	orden
fases(mezclar, rellenar, taco_servido).

% REGLAS
cremaTaco(X, Y) :-licuar(X);licuar(Y);guisar(Y, X), write('Se licuo la verdura').

tostar_taco(X) :- calentar(X); tostar(X), write('se calento el aceite y termino de tostar el taco').

servir_taco(X) :-servir(X,lechuga);servir(X, salsa); servir(X, queso), write('los tacos ya fueron servidos para consumirlos :) ').

