tag @s add ak.inclaim
execute unless entity @s[tag=ak.wasin] run function aksmp:claim/enter
execute if score @s ak.id = #o ak.tmp run return 0
execute store result storage aksmp:tmp ct.o int 1 run scoreboard players get #o ak.tmp
execute store result storage aksmp:tmp ct.m int 1 run scoreboard players get @s ak.id
function aksmp:claim/check with storage aksmp:tmp ct
