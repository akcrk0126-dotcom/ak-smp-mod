execute store result score #b ak.tmp run data get storage aksmp:tmp ce.o."minecraft:impaling"
scoreboard players set #a ak.tmp 0
execute if data storage aksmp:tmp ce.m."minecraft:impaling" store result score #a ak.tmp run data get storage aksmp:tmp ce.m."minecraft:impaling"
execute if score #mb ak.tmp matches 0 unless items entity @s weapon.mainhand #minecraft:enchantable/trident run return run scoreboard players add #skip ak.tmp 1
execute if data storage aksmp:tmp ce.m."minecraft:bane_of_arthropods" run return run scoreboard players add #skip ak.tmp 1
execute if data storage aksmp:tmp ce.m."minecraft:breach" run return run scoreboard players add #skip ak.tmp 1
execute if data storage aksmp:tmp ce.m."minecraft:density" run return run scoreboard players add #skip ak.tmp 1
execute if data storage aksmp:tmp ce.m."minecraft:sharpness" run return run scoreboard players add #skip ak.tmp 1
execute if data storage aksmp:tmp ce.m."minecraft:smite" run return run scoreboard players add #skip ak.tmp 1
scoreboard players operation #n ak.tmp = #a ak.tmp
execute if score #b ak.tmp > #a ak.tmp run scoreboard players operation #n ak.tmp = #b ak.tmp
execute if score #a ak.tmp = #b ak.tmp run scoreboard players add #n ak.tmp 1
execute if score #n ak.tmp matches 6.. run scoreboard players set #n ak.tmp 5
execute if score #n ak.tmp <= #a ak.tmp run return 0
execute store result storage aksmp:tmp ce.m."minecraft:impaling" int 1 run scoreboard players get #n ak.tmp
scoreboard players add #chg ak.tmp 1
scoreboard players operation #sq ak.tmp = #n ak.tmp
scoreboard players operation #sq ak.tmp *= #n ak.tmp
scoreboard players operation #cost ak.tmp += #sq ak.tmp
