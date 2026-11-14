execute unless score #on ak.auc matches 1 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.5ac4177a","fallback":"진행 중인 경매가 없습니다.","color":"red"}]
execute if score @s ak.id = #seller ak.auc run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9af518ec","fallback":"자신의 경매에는 입찰할 수 없습니다.","color":"red"}]
function aksmp:auc/min
execute if score @s bid < #min ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.cb2584bf","fallback":"최소 입찰가는 ","color":"red"},{"score":{"name":"#min","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.be3d01bb","fallback":" 코인입니다.","color":"red"}]
execute if score @s ak.money < @s bid run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.0bfe524c","fallback":"코인이 부족합니다.","color":"red"}]
execute if score #top ak.auc matches 1.. run function aksmp:auc/refund
scoreboard players operation @s ak.money -= @s bid
scoreboard players operation #bid ak.auc = @s bid
scoreboard players operation #top ak.auc = @s ak.id
execute if score #time ak.auc matches ..9 run scoreboard players set #time ak.auc 10
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"score":{"name":"#bid","objective":"ak.auc"},"color":"yellow"},{"translate":"aksmp.t.1e83b2cd","fallback":" 코인 입찰! "},{"translate":"aksmp.t.102f9ac1","fallback":"[더 높게 입찰]","color":"green","click_event":{"action":"run_command","command":"/trigger bidup"},"hover_event":{"action":"show_text","value":{"text":"/trigger bidup"}}}]
