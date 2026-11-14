give @s aksmp:crate_epic 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3d35869e","fallback":"레벨 보상으로 영웅 상자를 받았습니다!","color":"light_purple"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"text":"Lv.","color":"green","bold":true},{"score":{"name":"@s","objective":"ak.lv"},"color":"green","bold":true},{"translate":"aksmp.t.bc9d3667","fallback":" 을 달성했습니다!"}]
scoreboard players operation #m ak.tmp = @s ak.lv
scoreboard players operation #m ak.tmp %= #50 ak.cfg
execute if score #m ak.tmp matches 0 run give @s aksmp:crate_legendary 1
