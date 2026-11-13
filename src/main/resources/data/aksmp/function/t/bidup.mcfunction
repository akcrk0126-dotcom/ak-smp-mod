execute unless score #on ak.auc matches 1 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"진행 중인 경매가 없습니다.","color":"red"}]
function aksmp:auc/min
scoreboard players operation @s bid = #min ak.tmp
function aksmp:t/bid
scoreboard players set @s bid 0
