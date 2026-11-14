execute store result score #s ak.tmp run random value 1..1
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_god_1
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
title @a times 10 100 20
title @a subtitle {"selector":"@s","color":"yellow"}
title @a title {"translate":"aksmp.t.d10732f7","fallback":"갓 엠페러 강림!","color":"gold","bold":true}
function aksmp:fx/fireworks
