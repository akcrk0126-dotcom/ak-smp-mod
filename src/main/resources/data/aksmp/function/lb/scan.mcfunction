$execute unless score #i$(i) ak.lbp matches 1 if score #i$(i) ak.m$(b) > #best ak.tmp run function aksmp:lb/take {b:$(b),i:$(i)}
$scoreboard players set #i ak.tmp $(i)
scoreboard players add #i ak.tmp 1
execute if score #i ak.tmp > #next ak.id run return 0
execute store result storage aksmp:tmp lb.i int 1 run scoreboard players get #i ak.tmp
function aksmp:lb/scan with storage aksmp:tmp lb
