scoreboard players set @s ak.death 0
function aksmp:pvp/streak_end
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3b662c45","fallback":"사망 위치: ","color":"white"},{"nbt":"LastDeathLocation.pos","entity":"@s","color":"yellow"},{"text":" ","color":"white"},{"nbt":"LastDeathLocation.dimension","entity":"@s","color":"gray"}]
execute store result storage aksmp:tmp v.id int 1 run scoreboard players get @s ak.id
execute on attacker if entity @s[type=minecraft:player] run function aksmp:pvp/claim with storage aksmp:tmp v
