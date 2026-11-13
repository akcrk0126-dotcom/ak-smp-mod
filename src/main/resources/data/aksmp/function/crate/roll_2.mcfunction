execute store result score #r ak.tmp run random value 1..1000
scoreboard players add @s ak.xp 20
title @s times 3 35 10
execute if score #r ak.tmp matches 1..250 run return run function aksmp:crate/r_2_1
execute if score #r ak.tmp matches 251..430 run return run function aksmp:crate/r_2_2
execute if score #r ak.tmp matches 431..580 run return run function aksmp:crate/r_2_3
execute if score #r ak.tmp matches 581..690 run return run function aksmp:crate/r_2_4
execute if score #r ak.tmp matches 691..780 run return run function aksmp:crate/r_2_5
execute if score #r ak.tmp matches 781..850 run return run function aksmp:crate/r_2_6
execute if score #r ak.tmp matches 851..910 run return run function aksmp:crate/r_2_7
execute if score #r ak.tmp matches 911..950 run return run function aksmp:crate/r_2_8
execute if score #r ak.tmp matches 951..980 run return run function aksmp:crate/r_2_9
execute if score #r ak.tmp matches 981..1000 run return run function aksmp:crate/r_2_10
