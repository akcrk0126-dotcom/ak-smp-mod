execute store result score #s ak.tmp run random value 1..9
execute if score #s ak.tmp matches 1 run function aksmp:gacha/r_legend_1
execute if score #s ak.tmp matches 2 run function aksmp:gacha/r_legend_2
execute if score #s ak.tmp matches 3 run function aksmp:gacha/r_legend_3
execute if score #s ak.tmp matches 4 run function aksmp:gacha/r_legend_4
execute if score #s ak.tmp matches 5 run function aksmp:gacha/r_legend_5
execute if score #s ak.tmp matches 6 run function aksmp:gacha/r_legend_6
execute if score #s ak.tmp matches 7 run function aksmp:gacha/r_legend_7
execute if score #s ak.tmp matches 8 run function aksmp:gacha/r_legend_8
execute if score #s ak.tmp matches 9 run function aksmp:gacha/r_legend_9
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
