# Aviso de cada dia. Se ejecuta como el jugador. Macro: titulo, ref, texto (sin comillas ni acentos).
$title @s subtitle {"text":"$(ref)","color":"gray"}
$title @s title {"text":"$(titulo)"}
$tellraw @s {"text":"$(texto)","color":"yellow"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
