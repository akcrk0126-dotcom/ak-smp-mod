execute store result score #s ak.tmp run random value 1..8
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_rare_1
execute if score #s ak.tmp matches 2 run function aksmp:gacha/r_rare_2
execute if score #s ak.tmp matches 3 run function aksmp:gacha/r_rare_3
execute if score #s ak.tmp matches 4 run function aksmp:gacha/r_rare_4
execute if score #s ak.tmp matches 5 run function aksmp:gacha/r_rare_5
execute if score #s ak.tmp matches 6 run function aksmp:gacha/r_rare_6
execute if score #s ak.tmp matches 7 run function aksmp:gacha/r_rare_7
execute if score #s ak.tmp matches 8 run function aksmp:gacha/r_rare_8
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
