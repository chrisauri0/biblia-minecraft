# Igual que en, pero para colocar un pilar de la genealogia (Genesis 5). Mantener las mismas coordenadas que en.mcfunction.
# Uso: function biblia:tierra/en_pilar {x:-13,xc:-12.5,nombre:"Adan",edad:"930"}
$execute in minecraft:overworld positioned 2500 64 900 run function biblia:tierra/pilar {x:$(x),xc:$(xc),nombre:"$(nombre)",edad:"$(edad)"}
