execute unless score @s ak.money matches 60.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (60 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 60
give @s minecraft:cooked_beef 16
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"스테이크 ×16 구매 완료 (-60 코인)","color":"green"}]
