execute unless score #state ak.arena matches 2 run return 0
scoreboard players set #state ak.arena 3
scoreboard players set #timer ak.arena 100
$scoreboard players set #winner ak.arena $(w)
execute if score #winner ak.arena matches 1 run tag @a[tag=ak.inmatch,tag=ak.red] add ak.win
execute if score #winner ak.arena matches 2 run tag @a[tag=ak.inmatch,tag=ak.blue] add ak.win
title @a times 5 60 15
execute if score #winner ak.arena matches 1.. run title @a[tag=ak.hub] subtitle {"selector":"@a[tag=ak.win]","color":"yellow"}
execute if score #winner ak.arena matches 1 run title @a[tag=ak.hub] title {"translate":"aksmp.t.2ac41fc3","fallback":"RED 팀 승리!","color":"red","bold":true}
execute if score #winner ak.arena matches 2 run title @a[tag=ak.hub] title {"translate":"aksmp.t.aa47e63b","fallback":"BLUE 팀 승리!","color":"blue","bold":true}
execute if score #winner ak.arena matches 0 run title @a[tag=ak.hub] title {"translate":"aksmp.t.7788556d","fallback":"무승부","color":"gray","bold":true}
execute if score #winner ak.arena matches 1.. run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3f98c9e2","fallback":"격투장 결과: ","color":"gold"},{"selector":"@a[tag=ak.win]","color":"yellow"},{"translate":"aksmp.t.68f828d7","fallback":" 승리!"}]
execute if score #winner ak.arena matches 0 run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2faa2d3f","fallback":"격투장 결과: 무승부","color":"gray"}]
scoreboard players add @a[tag=ak.win] ak.wins 1
scoreboard players add @a[tag=ak.win] ak.xp 100
scoreboard players add @a[tag=ak.inmatch,tag=!ak.win] ak.xp 30
execute if score #winner ak.arena matches 1.. run scoreboard players add @a[tag=ak.inmatch,tag=!ak.win] ak.losses 1
execute as @a[tag=ak.win] run scoreboard players operation @s ak.money += #reward ak.cfg
tellraw @a[tag=ak.win] [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.7b7cf5d4","fallback":"승리 보상 +","color":"green"},{"score":{"name":"#reward","objective":"ak.cfg"},"color":"yellow"},{"translate":"aksmp.t.488f6160","fallback":" 코인","color":"green"}]
execute as @a[tag=ak.hub] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
function aksmp:fx/fireworks
execute if score #tour ak.arena matches 2 run function aksmp:tour/result
