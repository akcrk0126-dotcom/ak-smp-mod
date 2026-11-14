scoreboard players add @s ak.beststreak 0
scoreboard players operation @s ak.streak += @s ak.kev
scoreboard players operation #x ak.tmp = @s ak.kev
scoreboard players operation #x ak.tmp *= #50 ak.cfg
scoreboard players operation @s ak.xp += #x ak.tmp
scoreboard players set @s ak.kev 0
execute if score @s ak.streak > @s ak.beststreak run scoreboard players operation @s ak.beststreak = @s ak.streak
execute if score @s ak.streak matches 3 run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"red"},{"translate":"aksmp.t.4da8f9ba","fallback":" 3연속 킬!","color":"yellow","bold":true}]
execute if score @s ak.streak matches 5 run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"red"},{"translate":"aksmp.t.7e89b452","fallback":" 5연속 킬! 막을 수 없습니다!","color":"gold","bold":true}]
execute if score @s ak.streak matches 10 run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"red"},{"translate":"aksmp.t.49c95e84","fallback":" 10연속 킬!! 전설입니다!","color":"red","bold":true}]
