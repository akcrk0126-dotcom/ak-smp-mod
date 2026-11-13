execute unless score @s ak.money matches 200.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (200 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 200
give @s minecraft:firework_rocket 64
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"폭죽 로켓 ×64 구매 완료 (-200 코인)","color":"green"}]
