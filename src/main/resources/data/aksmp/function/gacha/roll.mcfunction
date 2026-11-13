execute store result score #r ak.tmp run random value 1..1000000
scoreboard players add @s ak.gcount 1
scoreboard players add @s ak.xp 20
title @s times 5 50 15
execute if score #r ak.tmp matches 1..1 run return run function aksmp:gacha/t_god
execute if score #r ak.tmp matches 2..101 run return run function aksmp:gacha/t_mythic
execute if score #r ak.tmp matches 102..2101 run return run function aksmp:gacha/t_legend
execute if score #r ak.tmp matches 2102..22101 run return run function aksmp:gacha/t_epic
execute if score #r ak.tmp matches 22102..172101 run return run function aksmp:gacha/t_rare
function aksmp:gacha/t_common
