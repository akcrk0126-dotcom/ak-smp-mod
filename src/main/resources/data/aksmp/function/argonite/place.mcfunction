$execute positioned ~$(x) ~$(y) ~$(z) unless block ~ ~ ~ minecraft:deepslate run return 0
scoreboard players set #n ak.tmp 0
$execute if data storage aksmp:arg r."$(rx)_$(rz)" store result score #n ak.tmp run data get storage aksmp:arg r."$(rx)_$(rz)"
execute if score #n ak.tmp matches 4.. run return 0
execute store result score #v ak.tmp run random value 1..3
scoreboard players set #rem ak.tmp 4
scoreboard players operation #rem ak.tmp -= #n ak.tmp
execute if score #v ak.tmp > #rem ak.tmp run scoreboard players operation #v ak.tmp = #rem ak.tmp
$execute positioned ~$(x) ~$(y) ~$(z) run function aksmp:argonite/vein with storage aksmp:tmp o
scoreboard players operation #n ak.tmp += #placed ak.tmp
$execute store result storage aksmp:arg r."$(rx)_$(rz)" int 1 run scoreboard players get #n ak.tmp
