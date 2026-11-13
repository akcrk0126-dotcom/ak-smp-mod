scoreboard players add #mid ak.arena 1
scoreboard players operation @a[tag=ak.inmatch] ak.mid = #mid ak.arena
scoreboard players set @a[tag=ak.inmatch] ak.q 0
scoreboard players set @a[tag=ak.inmatch] ak.death 0
tag @a[tag=ak.inmatch] add ak.fight
team join akred @a[tag=ak.red]
team join akblue @a[tag=ak.blue]
execute positioned ~ ~-1 ~ run tp @a[x=-18,z=-18,dx=36,dy=7,dz=36,tag=!ak.inmatch,gamemode=!spectator,gamemode=!creative] 0 ~2 62 180 0
gamemode adventure @a[tag=ak.inmatch]
effect clear @a[tag=ak.inmatch]
effect give @a[tag=ak.inmatch] minecraft:instant_health 1 10 true
effect give @a[tag=ak.inmatch] minecraft:saturation 1 20 true
tp @a[tag=ak.red] -11 ~1 0 -90 0
tp @a[tag=ak.blue] 11 ~1 0 90 0
execute if score #mode ak.arena matches 2.. run spreadplayers -11 0 2 3 false @a[tag=ak.red]
execute if score #mode ak.arena matches 2.. run spreadplayers 11 0 2 3 false @a[tag=ak.blue]
execute as @a[tag=ak.fight] run attribute @s minecraft:jump_strength modifier add aksmp:freeze -1 add_multiplied_total
scoreboard players set #state ak.arena 1
scoreboard players set #timer ak.arena 100
gamerule keep_inventory true
gamerule immediate_respawn true
bossbar set aksmp:match name {"text":"격투 준비 중...","color":"yellow"}
bossbar set aksmp:match value 300
bossbar set aksmp:match players @a[tag=ak.hub]
bossbar set aksmp:match visible true
title @a times 0 25 5
title @a[tag=ak.inmatch] subtitle [{"selector":"@a[tag=ak.red]","color":"red"},{"text":" vs ","color":"white"},{"selector":"@a[tag=ak.blue]","color":"blue"}]
title @a[tag=ak.inmatch] title {"text":"준비!","color":"yellow","bold":true}
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"격투장 ","color":"gold"},{"score":{"name":"#mode","objective":"ak.arena"},"color":"yellow"},{"text":" vs "},{"score":{"name":"#mode","objective":"ak.arena"},"color":"yellow"},{"text":" 매치: "},{"selector":"@a[tag=ak.red]","color":"red"},{"text":" vs "},{"selector":"@a[tag=ak.blue]","color":"blue"},{"text":" — 곧 시작합니다!"}]
