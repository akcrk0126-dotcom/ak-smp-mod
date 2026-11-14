execute unless score @s slot matches 1..16 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.1552612e","fallback":"없는 진열대입니다.","color":"red"}]
execute store result storage aksmp:tmp a.k int 1 run scoreboard players get @s slot
scoreboard players operation #p ak.tmp = @s slot
scoreboard players add #p ak.tmp 1
scoreboard players operation #p ak.tmp /= #2 ak.cfg
execute store result storage aksmp:tmp a.p int 1 run scoreboard players get #p ak.tmp
function aksmp:plot/vbuy with storage aksmp:tmp a
