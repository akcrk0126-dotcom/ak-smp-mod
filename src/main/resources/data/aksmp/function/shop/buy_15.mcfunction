execute unless score @s ak.money matches 5000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (5000 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 5000
give @s minecraft:totem_of_undying 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"불사의 토템 구매 완료 (-5000 코인)","color":"green"}]
