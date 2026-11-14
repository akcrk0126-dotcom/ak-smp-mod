$execute unless score #b$(id) ak.bounty matches 1.. run return 0
$scoreboard players operation @s ak.money += #b$(id) ak.bounty
$tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"red"},{"translate":"aksmp.t.0ca3872d","fallback":" 님이 현상금 "},{"score":{"name":"#b$(id)","objective":"ak.bounty"},"color":"yellow"},{"translate":"aksmp.t.0f1c48db","fallback":" 코인을 차지했습니다!"}]
$scoreboard players set #b$(id) ak.bounty 0
