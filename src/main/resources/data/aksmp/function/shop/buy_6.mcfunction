execute unless score @s ak.money matches 40.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (40 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 40
give @s minecraft:torch 64
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"횃불 ×64 구매 완료 (-40 코인)","color":"green"}]
