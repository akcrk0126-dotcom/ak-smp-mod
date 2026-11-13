execute unless score @s ak.money matches 50000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (50000 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 50000
give @s minecraft:elytra 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"겉날개 구매 완료 (-50000 코인)","color":"green"}]
