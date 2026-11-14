execute if score #on ak.auc matches 1 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8c18d87d","fallback":"이미 진행 중인 경매가 있습니다. 끝난 뒤에 다시 시도하세요.","color":"red"}]
execute unless score @s auc matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.c92c5654","fallback":"시작가는 1 이상","color":"red"}]
execute unless items entity @s weapon.mainhand * run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.c24bb6ba","fallback":"경매에 올릴 아이템을 손에 들고 시작하세요.","color":"red"}]
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
data modify storage aksmp:auc item set from block 0 -64 0 Items[0]
data remove storage aksmp:auc item.Slot
item replace block 0 -64 0 container.0 with minecraft:air
execute unless data storage aksmp:auc item.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8fe5b77c","fallback":"경매 등록에 실패했습니다.","color":"red"}]
item replace entity @s weapon.mainhand with minecraft:air
scoreboard players operation #bid ak.auc = @s auc
scoreboard players operation #seller ak.auc = @s ak.id
scoreboard players set #top ak.auc 0
scoreboard players set #time ak.auc 60
scoreboard players set #on ak.auc 1
bossbar set aksmp:auction players @a
bossbar set aksmp:auction visible true
data modify entity @e[type=minecraft:item_display,tag=ak.aucdisp,limit=1] item set from storage aksmp:auc item
data modify entity @e[type=minecraft:text_display,tag=ak.auctext,limit=1] text set value {"translate":"aksmp.t.aa920735","fallback":"경매 진행 중!","color":"yellow"}
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.e8dda451","fallback":" 님의 경매: "},{"nbt":"item.id","storage":"aksmp:auc","color":"aqua"},{"text":" ×"},{"nbt":"item.count","storage":"aksmp:auc"},{"translate":"aksmp.t.2504bfb8","fallback":" · 시작가 "},{"score":{"name":"#bid","objective":"ak.auc"},"color":"yellow"},{"translate":"aksmp.t.aba05d44","fallback":" 코인 · 60초 "},{"translate":"aksmp.t.6cebeb60","fallback":"[최소가 입찰]","color":"green","click_event":{"action":"run_command","command":"/trigger bidup"},"hover_event":{"action":"show_text","value":{"text":"/trigger bidup"}}},{"text":" "},{"translate":"aksmp.t.453e050a","fallback":"[금액 입력]","color":"aqua","click_event":{"action":"run_command","command":"/trigger bidmenu"},"hover_event":{"action":"show_text","value":{"text":"/trigger bidmenu"}}}]
