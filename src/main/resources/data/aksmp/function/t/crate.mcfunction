execute unless score @s crate matches 1..5 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.94249604","fallback":"/trigger crate set 1(일반) · 2(희귀) · 3(영웅) · 4(전설) · 5(신화)","color":"red"}]
execute if score @s crate matches 1 run return run function aksmp:crate/buy_1
execute if score @s crate matches 2 run return run function aksmp:crate/buy_2
execute if score @s crate matches 3 run return run function aksmp:crate/buy_3
execute if score @s crate matches 4 run return run function aksmp:crate/buy_4
execute if score @s crate matches 5 run return run function aksmp:crate/buy_5
