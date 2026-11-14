execute unless score @s ak.plot matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.5ee67bca","fallback":"보유한 상점 땅이 없습니다.","color":"red"}]
execute store result storage aksmp:tmp a.p int 1 run scoreboard players get @s ak.plot
scoreboard players operation #s ak.tmp = @s ak.plot
scoreboard players operation #s ak.tmp *= #2 ak.cfg
execute store result storage aksmp:tmp a.s2 int 1 run scoreboard players get #s ak.tmp
scoreboard players remove #s ak.tmp 1
execute store result storage aksmp:tmp a.s1 int 1 run scoreboard players get #s ak.tmp
function aksmp:plot/sell with storage aksmp:tmp a
