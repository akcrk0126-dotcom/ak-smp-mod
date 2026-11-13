execute unless score @s ak.money matches 300.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (300 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 300
give @s minecraft:experience_bottle 16
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경험치 병 ×16 구매 완료 (-300 코인)","color":"green"}]
