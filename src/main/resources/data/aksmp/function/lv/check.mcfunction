execute unless score @s ak.lv matches 1.. run scoreboard players set @s ak.lv 1
execute unless score @s ak.xp matches 0.. run scoreboard players set @s ak.xp 0
scoreboard players operation @s ak.xpn = @s ak.lv
scoreboard players operation @s ak.xpn *= #40 ak.cfg
scoreboard players add @s ak.xpn 60
execute if score @s ak.xp >= @s ak.xpn run function aksmp:lv/up
