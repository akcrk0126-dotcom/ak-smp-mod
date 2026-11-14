execute store result score #n ak.tmp if entity @a[tag=ak.tin]
scoreboard players operation #need ak.tmp = #tmode ak.arena
scoreboard players operation #need ak.tmp *= #2 ak.cfg
execute if score #n ak.tmp < #need ak.tmp run return run function aksmp:tour/cancel
scoreboard players set @a[tag=ak.tin] ak.tteam 0
scoreboard players set @a[tag=ak.tin] ak.tplayed 0
scoreboard players set #tn ak.tmp 0
function aksmp:tour/form
execute as @a[tag=ak.tin,scores={ak.tteam=0}] run function aksmp:tour/unjoin
scoreboard players set #tour ak.arena 2
scoreboard players set #round ak.arena 1
scoreboard players set #tgap ak.arena 5
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.17f48660","fallback":"토너먼트 시작! 총 ","color":"gold"},{"score":{"name":"#tn","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.c1bb7699","fallback":"팀, 상금 ","color":"gold"},{"score":{"name":"#pool","objective":"ak.arena"},"color":"yellow"},{"translate":"aksmp.t.853d3ae1","fallback":" 코인. 라운드 1 대진을 추첨합니다...","color":"gold"}]
