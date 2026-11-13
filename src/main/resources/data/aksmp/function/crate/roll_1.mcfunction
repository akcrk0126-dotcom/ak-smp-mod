execute store result score #r ak.tmp run random value 1..1000
scoreboard players add @s ak.xp 10
title @s times 3 35 10
execute if score #r ak.tmp matches 1..280 run return run function aksmp:crate/r_1_1
execute if score #r ak.tmp matches 281..480 run return run function aksmp:crate/r_1_2
execute if score #r ak.tmp matches 481..600 run return run function aksmp:crate/r_1_3
execute if score #r ak.tmp matches 601..700 run return run function aksmp:crate/r_1_4
execute if score #r ak.tmp matches 701..790 run return run function aksmp:crate/r_1_5
execute if score #r ak.tmp matches 791..870 run return run function aksmp:crate/r_1_6
execute if score #r ak.tmp matches 871..930 run return run function aksmp:crate/r_1_7
execute if score #r ak.tmp matches 931..970 run return run function aksmp:crate/r_1_8
execute if score #r ak.tmp matches 971..990 run return run function aksmp:crate/r_1_9
execute if score #r ak.tmp matches 991..1000 run return run function aksmp:crate/r_1_10
