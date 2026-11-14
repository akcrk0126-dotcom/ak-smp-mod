execute unless score @s payto matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.fe9df9b4","fallback":"ID는 1 이상의 숫자입니다. /trigger who 로 확인","color":"red"}]
execute if score @s payto > #next ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8d1a5315","fallback":"존재하지 않는 ID입니다.","color":"red"}]
scoreboard players operation @s ak.payto = @s payto
dialog show @s aksmp:pay2
