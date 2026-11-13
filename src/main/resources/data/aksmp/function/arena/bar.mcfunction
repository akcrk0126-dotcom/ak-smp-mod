bossbar set aksmp:match players @a[tag=ak.hub]
execute if score #state ak.arena matches 1 run return 0
scoreboard players operation #s ak.tmp = #timer ak.arena
scoreboard players operation #s ak.tmp /= #20 ak.cfg
execute store result bossbar aksmp:match value run scoreboard players get #s ak.tmp
bossbar set aksmp:match name [{"text":"RED ","color":"red","bold":true},{"score":{"name":"#red","objective":"ak.arena"},"color":"white"},{"text":"명  vs  ","color":"white"},{"text":"BLUE ","color":"blue","bold":true},{"score":{"name":"#blue","objective":"ak.arena"},"color":"white"},{"text":"명   남은 시간 ","color":"white"},{"score":{"name":"#s","objective":"ak.tmp"},"color":"yellow"},{"text":"초","color":"white"}]
