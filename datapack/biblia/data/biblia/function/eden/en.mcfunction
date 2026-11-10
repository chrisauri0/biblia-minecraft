# Ejecuta biblia:eden/<f> con la posicion en el centro del Eden, a una altura fija (y=64).
# UNICO lugar con las coordenadas del Eden. PRUEBA: (2400, 64, 900) es provisional (el mundo es superplano de vacio).
# Cuando exista el mapa real, cambiar aqui y en load.mcfunction (forceload); entonces se puede volver a usar
# "positioned over motion_blocking_no_leaves" para seguir la altura del terreno.
# Uso: function biblia:eden/en {f:"construir"}
$execute in minecraft:overworld positioned 2400 64 900 run function biblia:eden/$(f)
