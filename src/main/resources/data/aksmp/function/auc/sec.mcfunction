scoreboard players remove #time ak.auc 1
execute store result bossbar aksmp:auction value run scoreboard players get #time ak.auc
bossbar set aksmp:auction name [{"translate":"aksmp.t.a9a58c05","fallback":"경매 ","color":"yellow"},{"nbt":"item.id","storage":"aksmp:auc","color":"aqua"},{"text":" ×"},{"nbt":"item.count","storage":"aksmp:auc"},{"translate":"aksmp.t.a964fc9b","fallback":" · 현재가 "},{"score":{"name":"#bid","objective":"ak.auc"},"color":"yellow"},{"translate":"aksmp.t.35983189","fallback":" 코인 · "},{"score":{"name":"#time","objective":"ak.auc"},"color":"yellow"},{"translate":"aksmp.t.3c739078","fallback":"초"}]
execute if score #time ak.auc matches ..0 run function aksmp:auc/end
