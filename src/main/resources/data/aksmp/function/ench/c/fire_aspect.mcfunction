execute store result score #b ak.tmp run data get storage aksmp:tmp ce.o."minecraft:fire_aspect"
scoreboard players set #a ak.tmp 0
execute if data storage aksmp:tmp ce.m."minecraft:fire_aspect" store result score #a ak.tmp run data get storage aksmp:tmp ce.m."minecraft:fire_aspect"
execute if score #mb ak.tmp matches 0 unless items entity @s weapon.mainhand #minecraft:enchantable/fire_aspect run return run scoreboard players add #skip ak.tmp 1
scoreboard players operation #n ak.tmp = #a ak.tmp
execute if score #b ak.tmp > #a ak.tmp run scoreboard players operation #n ak.tmp = #b ak.tmp
execute if score #a ak.tmp = #b ak.tmp run scoreboard players add #n ak.tmp 1
execute if score #n ak.tmp matches 4.. run scoreboard players set #n ak.tmp 3
execute if score #n ak.tmp <= #a ak.tmp run return 0
execute store result storage aksmp:tmp ce.m."minecraft:fire_aspect" int 1 run scoreboard players get #n ak.tmp
scoreboard players add #chg ak.tmp 1
scoreboard players operation #sq ak.tmp = #n ak.tmp
scoreboard players operation #sq ak.tmp *= #n ak.tmp
scoreboard players operation #cost ak.tmp += #sq ak.tmp
