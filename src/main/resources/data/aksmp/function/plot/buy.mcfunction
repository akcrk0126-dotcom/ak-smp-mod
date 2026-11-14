execute if score @s ak.plot matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.45ca7883","fallback":"이미 상점 땅을 가지고 있습니다. (1인 1필지)","color":"red"}]
$execute if score #plot$(p) ak.plotown matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.a38057a7","fallback":"이미 주인이 있는 땅입니다.","color":"red"}]
execute if score @s ak.money < #plotprice ak.cfg run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.0bfe524c","fallback":"코인이 부족합니다.","color":"red"}]
scoreboard players operation @s ak.money -= #plotprice ak.cfg
$scoreboard players operation #plot$(p) ak.plotown = @s ak.id
$scoreboard players set @s ak.plot $(p)
$function aksmp:plot/sign {p:$(p),id:$(id)}
$tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.ccbf76d2","fallback":" 님이 상점 땅 #$(p) 을 구매했습니다!","with":[{"text":"$(p)"}],"color":"aqua"}]
