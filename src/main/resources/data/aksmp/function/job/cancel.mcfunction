$execute unless score #j$(k) ak.jleft matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이미 끝난 의뢰입니다.","color":"gray"}]
$execute store result score #o ak.tmp run data get storage aksmp:jobs j$(k).owner
execute unless score #o ak.tmp = @s ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"의뢰인만 취소할 수 있습니다.","color":"red"}]
$execute store result score #pay ak.tmp run data get storage aksmp:jobs j$(k).pay
$scoreboard players operation #pay ak.tmp *= #j$(k) ak.jleft
scoreboard players operation @s ak.money += #pay ak.tmp
$scoreboard players set #j$(k) ak.jleft 0
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"의뢰를 취소했습니다. 남은 예치금 ","color":"gray"},{"score":{"name":"#pay","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인 환불","color":"gray"}]
function aksmp:job/board
