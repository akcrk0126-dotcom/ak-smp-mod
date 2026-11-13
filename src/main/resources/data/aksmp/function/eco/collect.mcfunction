$execute unless score #p$(id) ak.pend matches 1.. run return 0
$scoreboard players operation @s ak.money += #p$(id) ak.pend
$tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"입금: +","color":"green"},{"score":{"name":"#p$(id)","objective":"ak.pend"},"color":"yellow"},{"text":" 코인","color":"green"}]
$scoreboard players set #p$(id) ak.pend 0
