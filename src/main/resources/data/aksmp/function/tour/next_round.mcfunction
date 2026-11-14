execute unless entity @a[tag=ak.tin] run return run function aksmp:tour/cancel
scoreboard players operation #A ak.tmp = @r[tag=ak.tin] ak.tteam
tag @a remove ak.cand
execute as @a[tag=ak.tin] unless score @s ak.tteam = #A ak.tmp run tag @s add ak.cand
execute unless entity @a[tag=ak.cand] run return run function aksmp:tour/champion
tag @a remove ak.cand
scoreboard players add #round ak.arena 1
scoreboard players set #tgap ak.arena 5
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.645c76ac","fallback":"토너먼트 라운드 ","color":"gold"},{"score":{"name":"#round","objective":"ak.arena"},"color":"yellow"},{"translate":"aksmp.t.94b0ef7d","fallback":" 진출 팀이 확정되었습니다. 곧 다음 경기!","color":"gold"}]
