execute unless score @s ak.money matches 150000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (신화 상자: 150000 코인)","color":"red"}]
scoreboard players remove @s ak.money 150000
give @s aksmp:crate_mythic 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"신화 상자 구매 완료 (-150000 코인). 손에 들고 우클릭하면 열립니다.","color":"green"}]
