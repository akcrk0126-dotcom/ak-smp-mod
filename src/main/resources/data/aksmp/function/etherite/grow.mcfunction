scoreboard players set @s ak.etht 0
execute unless dimension minecraft:the_end run return 0
scoreboard players set #placed ak.tmp 0
function aksmp:etherite/try
execute if score #placed ak.tmp matches 0 run function aksmp:etherite/try
execute if score #placed ak.tmp matches 0 run function aksmp:etherite/try
