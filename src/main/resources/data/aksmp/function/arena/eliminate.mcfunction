tag @s remove ak.fight
tag @s add ak.out
scoreboard players set @s ak.death 0
function aksmp:pvp/streak_end
gamemode spectator @s
tellraw @a[tag=ak.hub] [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.0e26cafc","fallback":" 탈락!","color":"red"}]
