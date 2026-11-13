execute unless score @s jq matches 1..2304 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"수량은 1~2304","color":"red"}]
scoreboard players operation @s ak.jq = @s jq
dialog show @s aksmp:job2
