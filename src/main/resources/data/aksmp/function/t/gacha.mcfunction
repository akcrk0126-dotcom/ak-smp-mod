execute if score @s ak.ganim matches 1.. run return 0
execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
scoreboard players operation #d ak.tmp = #clock ak.cfg
scoreboard players operation #d ak.tmp -= @s ak.gtime
execute unless score @s ak.gtime matches -2147483648.. run scoreboard players operation #d ak.tmp = #gacha_cd ak.cfg
execute if score #d ak.tmp >= #gacha_cd ak.cfg run return run function aksmp:gacha/free
execute store success score #ok ak.tmp run clear @s aksmp:gacha_ticket[minecraft:custom_data~{ak:"ticket"}] 1
execute if score #ok ak.tmp matches 1 run return run function aksmp:gacha/start
scoreboard players operation #rem ak.tmp = #gacha_cd ak.cfg
scoreboard players operation #rem ak.tmp -= #d ak.tmp
scoreboard players operation #rem ak.tmp /= #60 ak.cfg
scoreboard players add #rem ak.tmp 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9dcd2fd7","fallback":"오늘의 무료 뽑기는 이미 사용했습니다. 약 ","color":"gray"},{"score":{"name":"#rem","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.f6848e91","fallback":"분 뒤에 다시 가능 (가챠 티켓이 있으면 바로 뽑을 수 있습니다)","color":"gray"}]
