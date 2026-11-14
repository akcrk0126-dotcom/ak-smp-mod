execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute at @s unless dimension minecraft:overworld run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.ffe0092f","fallback":"/trigger top 은 오버월드에서만 쓸 수 있습니다.","color":"red"}]
scoreboard players operation #d ak.tmp = #clock ak.cfg
scoreboard players operation #d ak.tmp -= @s ak.topcd
execute if score @s ak.topcd matches 1.. if score #d ak.tmp matches ..14 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.03ddc1f5","fallback":"지상 이동은 15초마다 사용할 수 있습니다.","color":"red"}]
scoreboard players operation @s ak.topcd = #clock ak.cfg
execute at @s positioned over motion_blocking run tp @s ~ ~ ~
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.685bb5d2","fallback":"바로 위 지상으로 올라왔습니다.","color":"green"}]
