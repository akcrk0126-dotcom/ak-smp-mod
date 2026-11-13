scoreboard players operation #min ak.tmp = #bid ak.auc
execute if score #top ak.auc matches 0 run return 0
scoreboard players operation #r ak.tmp = #bid ak.auc
scoreboard players operation #r ak.tmp /= #20 ak.cfg
execute if score #r ak.tmp matches ..0 run scoreboard players set #r ak.tmp 1
scoreboard players operation #min ak.tmp += #r ak.tmp
