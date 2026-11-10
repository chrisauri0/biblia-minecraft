# Genesis 3:8-19: Dios llama.
execute as @a[scores={biblia_cap=3}] at @s run function biblia:capitulo/gen_01_aviso {titulo:"Dios llama",ref:"Genesis 3:8-19",texto:"Oyeron a Dios andar en el jardin y se escondieron. Dios los llamo y cada uno culpo a otro. Hubo consecuencias para la serpiente, la mujer y el hombre."}
execute as @a[scores={biblia_cap=3}] at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 1 0.6
schedule function biblia:capitulo/gen_03_expulsion 400t
