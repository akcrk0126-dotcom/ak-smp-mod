scoreboard players set #opened ak.tmp 0
execute at @s run function aksmp:crate/use
execute if score #opened ak.tmp matches 0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.09b0f484","fallback":"상자를 손에 들고 사용하세요. 상자는 /trigger crate set 1~5 또는 허브의 상자 상점에서 삽니다.","color":"red"}]
