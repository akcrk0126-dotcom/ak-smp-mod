execute store result score #n ak.tmp if entity @a[tag=ak.tin]
scoreboard players operation #share ak.tmp = #pool ak.arena
scoreboard players operation #share ak.tmp /= #n ak.tmp
execute as @a[tag=ak.tin] run scoreboard players operation @s ak.money += #share ak.tmp
scoreboard players add @a[tag=ak.tin] ak.twins 1
scoreboard players add @a[tag=ak.tin] ak.xp 500
scoreboard players operation #champ ak.arena = #tid ak.arena
scoreboard players operation @a[tag=ak.tin] ak.champid = #tid ak.arena
title @a times 5 80 20
title @a subtitle {"selector":"@a[tag=ak.tin]","color":"yellow"}
title @a title {"text":"토너먼트 우승!","color":"gold","bold":true}
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"토너먼트 우승: ","color":"gold"},{"selector":"@a[tag=ak.tin]","color":"yellow"},{"text":" — 1인당 상금 "},{"score":{"name":"#share","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인!"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function aksmp:fx/fireworks
tag @a remove ak.tin
scoreboard players set #tour ak.arena 0
