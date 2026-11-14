execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute unless score @s ak.tpafrom matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.5ac7a076","fallback":"받은 요청이 없습니다.","color":"red"}]
scoreboard players operation #d ak.tmp = #clock ak.cfg
scoreboard players operation #d ak.tmp -= @s ak.tpat
execute if score #d ak.tmp matches 61.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.352ddbab","fallback":"요청이 만료되었습니다.","color":"red"}]
scoreboard players operation #id ak.tmp = @s ak.tpafrom
tag @s add ak.tpt
execute as @a[tag=!ak.inmatch] if score @s ak.id = #id ak.tmp run tp @s @a[tag=ak.tpt,limit=1]
tag @s remove ak.tpt
scoreboard players set @s ak.tpafrom 0
