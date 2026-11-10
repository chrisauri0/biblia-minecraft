# Se ejecuta al cargar el mundo y en cada /reload.

# Capitulo actual de cada jugador (1 = Genesis 1, 2 = Eden, ...)
scoreboard objectives add biblia_cap dummy

# Permite al jugador saltar de capitulo sin ser operador: /trigger biblia_saltar set <capitulo>
scoreboard objectives add biblia_saltar trigger

# Version del mapa guardada en el mundo (sirve para migraciones al actualizar)
scoreboard objectives add biblia_version dummy
scoreboard players set #mapa biblia_version 1

# Mantiene cargada la zona de inicio de la creacion (si no, el fill de la plataforma falla)
execute in biblia:genesis run forceload add -32 -32 32 32

# Mantiene cargada la zona del Eden (PRUEBA: coordenadas provisionales, cambiar al mapa real)
execute in minecraft:overworld run forceload add 2384 884 2432 916
