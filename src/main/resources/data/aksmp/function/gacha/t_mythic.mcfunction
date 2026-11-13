execute store result score #s ak.tmp run random value 1..5
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_mythic_1
execute if score #s ak.tmp matches 2 run function aksmp:gacha/r_mythic_2
execute if score #s ak.tmp matches 3 run function aksmp:gacha/r_mythic_3
execute if score #s ak.tmp matches 4 run function aksmp:gacha/r_mythic_4
execute if score #s ak.tmp matches 5 run function aksmp:gacha/r_mythic_5
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
