# Ejecuta biblia:tierra/<f> con la posicion en el centro de la "Tierra de Nod" (2500, 64, 900), 100 bloques al este del Eden.
# PRUEBA: coordenadas provisionales (mundo superplano de vacio). Cambiar aqui, en en_pilar y en load.mcfunction (forceload).
# Uso: function biblia:tierra/en {f:"base"}
$execute in minecraft:overworld positioned 2500 64 900 run function biblia:tierra/$(f)
