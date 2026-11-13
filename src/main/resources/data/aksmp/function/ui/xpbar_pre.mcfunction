scoreboard players operation @s ak.xps = @s ak.xp
execute store result storage aksmp:tmp xb.id int 1 run scoreboard players get @s ak.id
execute store result storage aksmp:tmp xb.lv int 1 run scoreboard players get @s ak.lv
execute store result storage aksmp:tmp xb.xp int 1 run scoreboard players get @s ak.xp
execute store result storage aksmp:tmp xb.need int 1 run scoreboard players get @s ak.xpn
function aksmp:ui/xpbar with storage aksmp:tmp xb
