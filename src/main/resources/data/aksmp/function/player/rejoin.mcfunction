scoreboard players set @s ak.leave 0
tag @s remove ak.tin
scoreboard players set @s ak.q 0
scoreboard players set @s ak.xps -1
scoreboard players set @s ak.slot 0
function aksmp:player/savename
title @s times 10 50 15
title @s subtitle [{"text":"Lv.","color":"green"},{"score":{"name":"@s","objective":"ak.lv"},"color":"green"},{"text":"   코인 ","color":"gold"},{"score":{"name":"@s","objective":"ak.money"},"color":"yellow"}]
title @s title {"text":"AK SMP","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"다시 오신 것을 환영합니다! 잔액: ","color":"white"},{"score":{"name":"@s","objective":"ak.money"},"color":"yellow"},{"text":" 코인","color":"white"}]
function aksmp:mail/notify with storage aksmp:tmp a
