scoreboard players set #on ak.auc 0
bossbar set aksmp:auction visible false
data remove entity @e[type=minecraft:item_display,tag=ak.aucdisp,limit=1] item
data modify entity @e[type=minecraft:text_display,tag=ak.auctext,limit=1] text set value {"text":"현재 경매 없음","color":"gray"}
data modify storage aksmp:tmp item set from storage aksmp:auc item
execute if score #top ak.auc matches 0 run return run function aksmp:auc/unsold
execute store result storage aksmp:tmp m.id int 1 run scoreboard players get #top ak.auc
function aksmp:mail/send with storage aksmp:tmp m
function aksmp:mail/notify with storage aksmp:tmp m
scoreboard players operation #pay ak.tmp = #bid ak.auc
scoreboard players operation #pay ak.tmp *= #95 ak.cfg
scoreboard players operation #pay ak.tmp /= #100 ak.cfg
execute store result storage aksmp:tmp b.id int 1 run scoreboard players get #seller ak.auc
execute store result storage aksmp:tmp b.amt int 1 run scoreboard players get #pay ak.tmp
function aksmp:eco/pay_id with storage aksmp:tmp b
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"낙찰! ","color":"gold"},{"nbt":"item.id","storage":"aksmp:auc","color":"aqua"},{"text":" ×"},{"nbt":"item.count","storage":"aksmp:auc"},{"text":" — "},{"score":{"name":"#bid","objective":"ak.auc"},"color":"yellow"},{"text":" 코인 (낙찰자는 우편함에서 수령)"}]
