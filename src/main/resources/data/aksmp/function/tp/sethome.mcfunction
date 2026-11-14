$data modify storage aksmp:homes p$(id) set value {x:0,y:0,z:0,dim:"minecraft:overworld"}
$data modify storage aksmp:homes p$(id).dim set from entity @s Dimension
$execute store result storage aksmp:homes p$(id).x int 1 run data get entity @s Pos[0]
$execute store result storage aksmp:homes p$(id).y int 1 run data get entity @s Pos[1]
$execute store result storage aksmp:homes p$(id).z int 1 run data get entity @s Pos[2]
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.fa447a9c","fallback":"현재 위치를 집으로 설정했습니다. /trigger home","color":"green"}]
