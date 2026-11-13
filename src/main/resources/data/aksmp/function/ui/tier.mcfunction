scoreboard players set #want ak.tmp 0
execute if score @s ak.wins matches 3.. run scoreboard players set #want ak.tmp 1
execute if score @s ak.wins matches 10.. run scoreboard players set #want ak.tmp 2
execute if score @s ak.wins matches 25.. run scoreboard players set #want ak.tmp 3
execute if score @s ak.wins matches 50.. run scoreboard players set #want ak.tmp 4
execute if score @s ak.wins matches 100.. run scoreboard players set #want ak.tmp 5
execute if score #want ak.tmp matches 1.. unless score @s ak.tierbest >= #want ak.tmp run function aksmp:ui/promote
execute if score #champ ak.arena matches 1.. if score @s ak.champid = #champ ak.arena run scoreboard players set #want ak.tmp 9
scoreboard players operation #key ak.tmp = @s ak.pmode
scoreboard players operation #key ak.tmp *= #100 ak.cfg
scoreboard players operation #key ak.tmp += @s ak.slot
scoreboard players operation #key ak.tmp *= #100 ak.cfg
scoreboard players operation #key ak.tmp += #want ak.tmp
execute if score @s ak.tier = #key ak.tmp run return 0
scoreboard players operation @s ak.tier = #key ak.tmp
execute if score @s ak.slot matches 1.. run return run function aksmp:ui/team_slot
execute if score @s ak.pmode matches 2 run return run function aksmp:ui/team_hidden
function aksmp:ui/team_rank
