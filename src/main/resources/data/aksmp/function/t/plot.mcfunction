execute unless score @s plot matches 1..8 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"없는 땅 번호입니다.","color":"red"}]
execute store result storage aksmp:tmp a.p int 1 run scoreboard players get @s plot
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
function aksmp:plot/buy with storage aksmp:tmp a
