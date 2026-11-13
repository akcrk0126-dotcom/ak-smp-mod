execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
function aksmp:tp/sethome with storage aksmp:tmp a
