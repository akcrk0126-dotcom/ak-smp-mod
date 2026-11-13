execute unless score #tour ak.arena matches 1 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"지금은 토너먼트 참가 접수 중이 아닙니다.","color":"red"}]
execute if entity @s[tag=ak.tin] run return run function aksmp:tour/unjoin
execute unless score @s ak.money matches 100.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"참가비 100 코인이 부족합니다.","color":"red"}]
scoreboard players remove @s ak.money 100
scoreboard players add #pool ak.arena 100
tag @s add ak.tin
scoreboard players set @s ak.q 0
scoreboard players set @s ak.tplayed 0
scoreboard players set @s ak.tteam 0
execute store result score #n ak.tmp if entity @a[tag=ak.tin]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 토너먼트 참가! (현재 "},{"score":{"name":"#n","objective":"ak.tmp"},"color":"yellow"},{"text":"명, 상금 "},{"score":{"name":"#pool","objective":"ak.arena"},"color":"yellow"},{"text":" 코인)"}]
