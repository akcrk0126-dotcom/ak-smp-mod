execute store result score #r ak.tmp run random value 1..1000
scoreboard players add @s ak.xp 40
title @s times 3 35 10
execute if score #r ak.tmp matches 1..220 run return run function aksmp:crate/r_4_1
execute if score #r ak.tmp matches 221..390 run return run function aksmp:crate/r_4_2
execute if score #r ak.tmp matches 391..510 run return run function aksmp:crate/r_4_3
execute if score #r ak.tmp matches 511..610 run return run function aksmp:crate/r_4_4
execute if score #r ak.tmp matches 611..690 run return run function aksmp:crate/r_4_5
execute if score #r ak.tmp matches 691..770 run return run function aksmp:crate/r_4_6
execute if score #r ak.tmp matches 771..810 run return run function aksmp:crate/r_4_7
execute if score #r ak.tmp matches 811..850 run return run function aksmp:crate/r_4_8
execute if score #r ak.tmp matches 851..910 run return run function aksmp:crate/r_4_9
execute if score #r ak.tmp matches 911..950 run return run function aksmp:crate/r_4_10
execute if score #r ak.tmp matches 951..980 run return run function aksmp:crate/r_4_11
execute if score #r ak.tmp matches 981..1000 run return run function aksmp:crate/r_4_12
