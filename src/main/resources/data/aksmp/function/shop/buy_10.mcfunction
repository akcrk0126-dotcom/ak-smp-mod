execute unless score @s ak.money matches 1500.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.da954f0c","fallback":"코인이 부족합니다. (1500 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 1500
give @s aksmp:gacha_ticket 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.128641d5","fallback":"가챠 티켓 ×1 구매 완료 (-1500 코인)","color":"green"}]
