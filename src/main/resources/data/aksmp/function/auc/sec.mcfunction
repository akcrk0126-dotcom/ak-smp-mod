scoreboard players remove #time ak.auc 1
execute store result bossbar aksmp:auction value run scoreboard players get #time ak.auc
bossbar set aksmp:auction name [{"text":"경매 ","color":"yellow"},{"nbt":"item.id","storage":"aksmp:auc","color":"aqua"},{"text":" ×"},{"nbt":"item.count","storage":"aksmp:auc"},{"text":" · 현재가 "},{"score":{"name":"#bid","objective":"ak.auc"},"color":"yellow"},{"text":" 코인 · "},{"score":{"name":"#time","objective":"ak.auc"},"color":"yellow"},{"text":"초"}]
execute if score #time ak.auc matches ..0 run function aksmp:auc/end
