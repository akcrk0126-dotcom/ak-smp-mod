execute unless score @s ak.money matches 3000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (3000 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 3000
give @s minecraft:shulker_box 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"셜커 상자 구매 완료 (-3000 코인)","color":"green"}]
