execute unless score @s ak.money matches 400.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (400 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 400
give @s minecraft:golden_apple 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"황금 사과 ×1 구매 완료 (-400 코인)","color":"green"}]
