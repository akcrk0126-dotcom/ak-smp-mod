execute unless score @s ak.money matches 500.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (일반 상자: 500 코인)","color":"red"}]
scoreboard players remove @s ak.money 500
give @s aksmp:crate_common 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"일반 상자 구매 완료 (-500 코인). 손에 들고 우클릭하면 열립니다.","color":"green"}]
