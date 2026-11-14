tag @a remove ak.cand
execute as @a[tag=ak.tin] if score @s ak.tplayed < #round ak.arena run tag @s add ak.cand
execute unless entity @a[tag=ak.cand] run return run function aksmp:tour/next_round
scoreboard players operation #A ak.tmp = @r[tag=ak.cand] ak.tteam
execute as @a[tag=ak.cand] if score @s ak.tteam = #A ak.tmp run tag @s add ak.red
tag @a[tag=ak.red] remove ak.cand
execute unless entity @a[tag=ak.cand] run return run function aksmp:tour/bye
scoreboard players operation #B ak.tmp = @r[tag=ak.cand] ak.tteam
execute as @a[tag=ak.cand] if score @s ak.tteam = #B ak.tmp run tag @s add ak.blue
tag @a remove ak.cand
tag @a[tag=ak.red] add ak.inmatch
tag @a[tag=ak.blue] add ak.inmatch
scoreboard players operation @a[tag=ak.inmatch] ak.tplayed = #round ak.arena
scoreboard players operation #mode ak.arena = #tmode ak.arena
scoreboard players set #tgap ak.arena 5
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.645c76ac","fallback":"토너먼트 라운드 ","color":"gold"},{"score":{"name":"#round","objective":"ak.arena"},"color":"yellow"},{"text":": "},{"selector":"@a[tag=ak.red]","color":"red"},{"text":" vs "},{"selector":"@a[tag=ak.blue]","color":"blue"}]
function aksmp:arena/begin
