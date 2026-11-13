execute if score @s ak.plot matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이미 상점 땅을 가지고 있습니다. (1인 1필지)","color":"red"}]
$execute if score #plot$(p) ak.plotown matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이미 주인이 있는 땅입니다.","color":"red"}]
execute if score @s ak.money < #plotprice ak.cfg run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다.","color":"red"}]
scoreboard players operation @s ak.money -= #plotprice ak.cfg
$scoreboard players operation #plot$(p) ak.plotown = @s ak.id
$scoreboard players set @s ak.plot $(p)
$function aksmp:plot/sign {p:$(p),id:$(id)}
$tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 상점 땅 #$(p) 을 구매했습니다!","color":"aqua"}]
