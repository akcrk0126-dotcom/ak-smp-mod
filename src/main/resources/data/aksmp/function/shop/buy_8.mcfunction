execute unless score @s ak.money matches 250.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (250 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 250
give @s minecraft:diamond 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"다이아몬드 ×1 구매 완료 (-250 코인)","color":"green"}]
