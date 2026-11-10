# Se ejecuta al cargar el mundo y en cada /reload.

# Capitulo actual de cada jugador (1 = Genesis 1, 2 = Eden, ...)
scoreboard objectives add biblia_cap dummy

# Permite al jugador saltar de capitulo sin ser operador: /trigger biblia_saltar set <capitulo>
scoreboard objectives add biblia_saltar trigger

# Version del mapa guardada en el mundo (sirve para migraciones al actualizar)
scoreboard objectives add biblia_version dummy
scoreboard players set #mapa biblia_version 1
