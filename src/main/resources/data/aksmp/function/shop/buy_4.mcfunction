execute unless score @s ak.money matches 120.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (120 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 120
give @s minecraft:ender_pearl 4
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"엔더 진주 ×4 구매 완료 (-120 코인)","color":"green"}]
