execute if entity @s[tag=ak.nohud] run return run function aksmp:ui/hud_on
tag @s add ak.nohud
title @s actionbar ""
execute store result storage aksmp:tmp xb.id int 1 run scoreboard players get @s ak.id
function aksmp:ui/xpbar_hide with storage aksmp:tmp xb
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"레벨 바와 알림 줄을 껐습니다. 다시 켜려면 /trigger hud (오른쪽 창은 /trigger panel)","color":"gray"}]
