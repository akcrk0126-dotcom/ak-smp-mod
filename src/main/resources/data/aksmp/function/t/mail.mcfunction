execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
scoreboard players set #n ak.tmp 0
execute at @s run function aksmp:mail/loop with storage aksmp:tmp a
execute if score #n ak.tmp matches 0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.711a1589","fallback":"우편함이 비어 있습니다.","color":"gray"}]
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2d9a853b","fallback":"우편 ","color":"green"},{"score":{"name":"#n","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.e4b19d7a","fallback":"건을 수령했습니다.","color":"green"}]
