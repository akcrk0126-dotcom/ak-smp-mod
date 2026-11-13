give @s aksmp:crate_epic 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"레벨 보상으로 영웅 상자를 받았습니다!","color":"light_purple"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"Lv.","color":"green","bold":true},{"score":{"name":"@s","objective":"ak.lv"},"color":"green","bold":true},{"text":" 을 달성했습니다!"}]
scoreboard players operation #m ak.tmp = @s ak.lv
scoreboard players operation #m ak.tmp %= #50 ak.cfg
execute if score #m ak.tmp matches 0 run give @s aksmp:crate_legendary 1
