execute store result score #r ak.tmp run random value 1..1000
scoreboard players add @s ak.xp 50
title @s times 3 35 10
execute if score #r ak.tmp matches 1..240 run return run function aksmp:crate/r_5_1
execute if score #r ak.tmp matches 241..390 run return run function aksmp:crate/r_5_2
execute if score #r ak.tmp matches 391..530 run return run function aksmp:crate/r_5_3
execute if score #r ak.tmp matches 531..560 run return run function aksmp:crate/r_5_4
execute if score #r ak.tmp matches 561..590 run return run function aksmp:crate/r_5_5
execute if score #r ak.tmp matches 591..620 run return run function aksmp:crate/r_5_6
execute if score #r ak.tmp matches 621..650 run return run function aksmp:crate/r_5_7
execute if score #r ak.tmp matches 651..750 run return run function aksmp:crate/r_5_8
execute if score #r ak.tmp matches 751..850 run return run function aksmp:crate/r_5_9
execute if score #r ak.tmp matches 851..940 run return run function aksmp:crate/r_5_10
execute if score #r ak.tmp matches 941..999 run return run function aksmp:crate/r_5_11
execute if score #r ak.tmp matches 1000..1000 run return run function aksmp:crate/r_5_12
