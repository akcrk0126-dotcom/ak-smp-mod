execute unless score @s ak.money matches 260.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.45b7e0b2","fallback":"코인이 부족합니다. (260 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 260
give @s minecraft:iron_ingot 16
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.6e3d5519","fallback":"철 주괴 ×16 구매 완료 (-260 코인)","color":"green"}]
