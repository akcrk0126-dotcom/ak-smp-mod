$scoreboard players add #b$(id) ak.bounty $(amt)
$tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"nbt":"p$(id)","storage":"aksmp:names","interpret":true,"color":"red"},{"text":" 님에게 현상금 $(amt) 코인! (누적 "},{"score":{"name":"#b$(id)","objective":"ak.bounty"},"color":"yellow"},{"text":" 코인)"}]
