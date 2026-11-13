scoreboard players set #rh ak.tmp 0
scoreboard players set #bh ak.tmp 0
execute as @a[tag=ak.fight,tag=ak.red] run scoreboard players operation #rh ak.tmp += @s ak.hp
execute as @a[tag=ak.fight,tag=ak.blue] run scoreboard players operation #bh ak.tmp += @s ak.hp
execute if score #rh ak.tmp > #bh ak.tmp run return run function aksmp:arena/finish {w:1}
execute if score #rh ak.tmp < #bh ak.tmp run return run function aksmp:arena/finish {w:2}
function aksmp:arena/finish {w:0}
