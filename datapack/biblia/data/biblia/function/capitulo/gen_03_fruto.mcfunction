# Genesis 3:6-7: el fruto.
execute as @a[scores={biblia_cap=3}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"El fruto",ref:"Genesis 3:6-7",texto:"La mujer vio que el fruto era bueno, comio y dio tambien a su marido. Se les abrieron los ojos y supieron que estaban desnudos."}
execute as @a[scores={biblia_cap=3}] at @s run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 1
schedule function biblia:capitulo/gen_03_juicio 400t
