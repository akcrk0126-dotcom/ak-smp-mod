$execute positioned ~$(x) ~$(y) ~$(z) unless block ~ ~ ~ minecraft:end_stone run return 0
scoreboard players set #n ak.tmp 0
$execute if data storage aksmp:eth r."$(rx)_$(rz)" store result score #n ak.tmp run data get storage aksmp:eth r."$(rx)_$(rz)"
execute if score #n ak.tmp matches 2.. run return 0
$execute positioned ~$(x) ~$(y) ~$(z) run setblock ~ ~ ~ aksmp:etherite_ore
scoreboard players set #placed ak.tmp 1
scoreboard players add #n ak.tmp 1
$execute store result storage aksmp:eth r."$(rx)_$(rz)" int 1 run scoreboard players get #n ak.tmp
