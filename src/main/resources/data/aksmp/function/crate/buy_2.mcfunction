execute unless score @s ak.money matches 2500.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.7286efcc","fallback":"코인이 부족합니다. (희귀 상자: 2500 코인)","color":"red"}]
scoreboard players remove @s ak.money 2500
give @s aksmp:crate_rare 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.fdb71c2e","fallback":"희귀 상자 구매 완료 (-2500 코인). 손에 들고 우클릭하면 열립니다.","color":"green"}]
