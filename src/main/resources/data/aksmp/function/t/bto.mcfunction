execute unless score @s bto matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8c91cffc","fallback":"ID는 1 이상의 숫자","color":"red"}]
execute if score @s bto > #next ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8d1a5315","fallback":"존재하지 않는 ID입니다.","color":"red"}]
scoreboard players operation @s ak.bto = @s bto
dialog show @s aksmp:bounty2
