execute store result score #s ak.tmp run random value 1..10
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_common_1
execute if score #s ak.tmp matches 2 run function aksmp:gacha/r_common_2
execute if score #s ak.tmp matches 3 run function aksmp:gacha/r_common_3
execute if score #s ak.tmp matches 4 run function aksmp:gacha/r_common_4
execute if score #s ak.tmp matches 5 run function aksmp:gacha/r_common_5
execute if score #s ak.tmp matches 6 run function aksmp:gacha/r_common_6
execute if score #s ak.tmp matches 7 run function aksmp:gacha/r_common_7
execute if score #s ak.tmp matches 8 run function aksmp:gacha/r_common_8
execute if score #s ak.tmp matches 9 run function aksmp:gacha/r_common_9
execute if score #s ak.tmp matches 10 run function aksmp:gacha/r_common_10
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
