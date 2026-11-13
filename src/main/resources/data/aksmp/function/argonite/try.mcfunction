execute store result score #ox ak.tmp run random value -10..10
execute store result score #oy ak.tmp run random value -5..5
execute store result score #oz ak.tmp run random value -10..10
execute store result storage aksmp:tmp o.x int 1 run scoreboard players get #ox ak.tmp
execute store result storage aksmp:tmp o.y int 1 run scoreboard players get #oy ak.tmp
execute store result storage aksmp:tmp o.z int 1 run scoreboard players get #oz ak.tmp
execute store result score #x ak.tmp run data get entity @s Pos[0]
execute store result score #z ak.tmp run data get entity @s Pos[2]
scoreboard players operation #x ak.tmp += #ox ak.tmp
scoreboard players operation #z ak.tmp += #oz ak.tmp
scoreboard players set #c32 ak.tmp 32
scoreboard players operation #lx ak.tmp = #x ak.tmp
scoreboard players operation #lx ak.tmp %= #c32 ak.tmp
scoreboard players operation #lz ak.tmp = #z ak.tmp
scoreboard players operation #lz ak.tmp %= #c32 ak.tmp
data modify storage aksmp:tmp o.dx set value 1
execute if score #lx ak.tmp matches 16.. run data modify storage aksmp:tmp o.dx set value -1
data modify storage aksmp:tmp o.dz set value 1
execute if score #lz ak.tmp matches 16.. run data modify storage aksmp:tmp o.dz set value -1
scoreboard players operation #x ak.tmp /= #c32 ak.tmp
scoreboard players operation #z ak.tmp /= #c32 ak.tmp
execute store result storage aksmp:tmp o.rx int 1 run scoreboard players get #x ak.tmp
execute store result storage aksmp:tmp o.rz int 1 run scoreboard players get #z ak.tmp
function aksmp:argonite/place with storage aksmp:tmp o
