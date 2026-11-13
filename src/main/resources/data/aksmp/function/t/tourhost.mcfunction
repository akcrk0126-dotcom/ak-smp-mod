execute unless score @s tourhost matches 1..3 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"1~3 중에서 고르세요.","color":"red"}]
execute if score #tour ak.arena matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이미 토너먼트가 진행 중입니다.","color":"red"}]
execute unless entity @s[tag=ak.hub] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"스폰 허브에서만 개최할 수 있습니다.","color":"red"}]
execute unless score @s ak.money matches 500.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"개최 비용 500 코인이 부족합니다.","color":"red"}]
scoreboard players remove @s ak.money 500
scoreboard players operation #tmode ak.arena = @s tourhost
function aksmp:tour/open
