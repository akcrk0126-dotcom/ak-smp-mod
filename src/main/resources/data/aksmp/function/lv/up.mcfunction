scoreboard players operation @s ak.xp -= @s ak.xpn
scoreboard players add @s ak.lv 1
scoreboard players operation #c ak.tmp = @s ak.lv
scoreboard players operation #c ak.tmp *= #50 ak.cfg
scoreboard players operation @s ak.money += #c ak.tmp
title @s times 5 40 10
title @s subtitle [{"translate":"aksmp.t.e0597d5e","fallback":"보상 +","color":"yellow"},{"score":{"name":"#c","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.488f6160","fallback":" 코인","color":"yellow"}]
title @s title [{"text":"LEVEL UP!  Lv.","color":"green","bold":true},{"score":{"name":"@s","objective":"ak.lv"},"color":"green","bold":true}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.87b32a45","fallback":"레벨 업! Lv.","color":"green"},{"score":{"name":"@s","objective":"ak.lv"},"color":"yellow"},{"translate":"aksmp.t.1085e92a","fallback":" (보상 +","color":"green"},{"score":{"name":"#c","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.dd4a99d8","fallback":" 코인)","color":"green"}]
scoreboard players operation #m ak.tmp = @s ak.lv
scoreboard players operation #m ak.tmp %= #5 ak.cfg
execute if score #m ak.tmp matches 0 run function aksmp:lv/milestone
function aksmp:lv/check
