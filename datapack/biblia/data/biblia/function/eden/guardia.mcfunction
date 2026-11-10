# Puerta oriental custodiada (Genesis 3:24). Placeholder: fuego sobre netherrack y un blaze quieto.
fill ~14 ~-1 ~-3 ~14 ~-1 ~3 minecraft:netherrack
fill ~14 ~ ~-3 ~14 ~ ~3 minecraft:fire
summon minecraft:blaze ~14 ~1 ~0 {Tags:["biblia_eden","biblia_guardia"],CustomName:"Querubin",CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b}
playsound minecraft:item.firecharge.use master @a ~14 ~ ~0 3 0.6
