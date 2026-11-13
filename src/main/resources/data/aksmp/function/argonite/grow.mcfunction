scoreboard players set @s ak.argt 0
execute unless dimension minecraft:overworld run return 0
scoreboard players set #placed ak.tmp 0
function aksmp:argonite/try
execute if score #placed ak.tmp matches 0 run function aksmp:argonite/try
execute if score #placed ak.tmp matches 0 run function aksmp:argonite/try
