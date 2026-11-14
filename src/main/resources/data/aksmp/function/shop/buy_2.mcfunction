execute unless score @s ak.money matches 150.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.fcab6654","fallback":"코인이 부족합니다. (150 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 150
give @s minecraft:golden_carrot 16
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.22a9b532","fallback":"황금 당근 ×16 구매 완료 (-150 코인)","color":"green"}]
