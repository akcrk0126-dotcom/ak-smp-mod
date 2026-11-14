execute unless score @s ak.money matches 40000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.1639f0a8","fallback":"코인이 부족합니다. (전설 상자: 40000 코인)","color":"red"}]
scoreboard players remove @s ak.money 40000
give @s aksmp:crate_legendary 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.e23c7c87","fallback":"전설 상자 구매 완료 (-40000 코인). 손에 들고 우클릭하면 열립니다.","color":"green"}]
