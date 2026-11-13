scoreboard players set #best ak.tmp 0
scoreboard players set #bid ak.tmp 0
$data modify storage aksmp:tmp lb set value {b:$(b),i:1}
execute if score #next ak.id matches 1.. run function aksmp:lb/scan with storage aksmp:tmp lb
$execute if score #bid ak.tmp matches 0 run return run function aksmp:lb/blank {b:$(b),r:$(r),ni:$(ni),vi:$(vi)}
$data modify storage aksmp:tmp lp set value {b:$(b),r:$(r),ni:$(ni),vi:$(vi)}
execute store result storage aksmp:tmp lp.pid int 1 run scoreboard players get #bid ak.tmp
execute store result storage aksmp:tmp lp.v int 1 run scoreboard players get #best ak.tmp
function aksmp:lb/put with storage aksmp:tmp lp
