# Pilar de piedra con el nombre y los anos del patriarca (macro: x, xc = centro del bloque, nombre, edad).
$fill ~$(x) ~ ~ ~$(x) ~3 ~ minecraft:stone_bricks
$setblock ~$(x) ~4 ~ minecraft:lantern
$summon minecraft:text_display ~$(xc) ~5.2 ~0.5 {Tags:["biblia_tierra"],billboard:"center",text:"$(nombre)\n$(edad) anos"}
$playsound minecraft:block.note_block.bell master @a ~$(xc) ~2 ~0.5 2 1
