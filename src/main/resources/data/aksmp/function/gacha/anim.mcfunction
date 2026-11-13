scoreboard players remove @s ak.ganim 1
execute if score @s ak.ganim matches 10 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.6
execute if score @s ak.ganim matches 20 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.3
execute if score @s ak.ganim matches 30 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1.0
execute if score @s ak.ganim matches 40 run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 0.8
particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.02 2
execute if score @s ak.ganim matches 0 run function aksmp:gacha/roll
