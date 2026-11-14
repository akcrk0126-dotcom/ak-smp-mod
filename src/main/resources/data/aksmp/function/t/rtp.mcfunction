execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
scoreboard players operation #d ak.tmp = #clock ak.cfg
scoreboard players operation #d ak.tmp -= @s ak.rtpcd
execute if score @s ak.rtpcd matches 1.. if score #d ak.tmp matches ..29 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8bc4a4e6","fallback":"야생 텔레포트는 30초마다 사용할 수 있습니다.","color":"red"}]
scoreboard players operation @s ak.rtpcd = #clock ak.cfg
effect give @s minecraft:resistance 8 4 true
effect give @s minecraft:slow_falling 8 0 true
execute in minecraft:overworld run spreadplayers 0 0 0 5000 under 180 false @s
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.7fe23378","fallback":"야생으로 이동했습니다! /trigger sethome 으로 집을 정해 두세요.","color":"green"}]
