execute unless score @s ak.money matches 10000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.e368ca3f","fallback":"코인이 부족합니다. (영웅 상자: 10000 코인)","color":"red"}]
scoreboard players remove @s ak.money 10000
give @s aksmp:crate_epic 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.993551f2","fallback":"영웅 상자 구매 완료 (-10000 코인). 손에 들고 우클릭하면 열립니다.","color":"green"}]
