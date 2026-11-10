# Genesis 4:3-5 (servidor): las ofrendas.
function biblia:tierra/en {f:"altares"}
function biblia:tierra/en {f:"ira"}
execute as @a[scores={biblia_cap=4}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Las ofrendas",ref:"Genesis 4:3-5",texto:"Cain trajo del fruto de la tierra una ofrenda, y Abel trajo de los primogenitos de sus ovejas. Dios miro con agrado a Abel y su ofrenda, pero no a Cain y la suya. Cain se enojo mucho."}
schedule function biblia:capitulo/gen_04_advertencia 400t
