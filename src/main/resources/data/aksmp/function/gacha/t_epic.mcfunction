execute store result score #s ak.tmp run random value 1..9
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_epic_1
execute if score #s ak.tmp matches 2 run function aksmp:gacha/r_epic_2
execute if score #s ak.tmp matches 3 run function aksmp:gacha/r_epic_3
execute if score #s ak.tmp matches 4 run function aksmp:gacha/r_epic_4
execute if score #s ak.tmp matches 5 run function aksmp:gacha/r_epic_5
execute if score #s ak.tmp matches 6 run function aksmp:gacha/r_epic_6
execute if score #s ak.tmp matches 7 run function aksmp:gacha/r_epic_7
execute if score #s ak.tmp matches 8 run function aksmp:gacha/r_epic_8
execute if score #s ak.tmp matches 9 run function aksmp:gacha/r_epic_9
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
