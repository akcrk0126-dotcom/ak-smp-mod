scoreboard players operation #m ak.tmp = @s ak.lv
scoreboard players operation #m ak.tmp %= #10 ak.cfg
execute if score #m ak.tmp matches 0 run return run function aksmp:lv/m10
give @s aksmp:crate_rare 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.6f2ee0f0","fallback":"레벨 보상으로 희귀 상자를 받았습니다!","color":"aqua"}]
