execute unless score @s ak.money matches 8000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (8000 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 8000
give @s minecraft:netherite_upgrade_smithing_template 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"네더라이트 강화 형판 구매 완료 (-8000 코인)","color":"green"}]
