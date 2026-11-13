execute as @a unless score @s ak.kills matches -2147483648.. run scoreboard players set @s ak.kills 0
execute as @a unless score @s ak.deaths matches -2147483648.. run scoreboard players set @s ak.deaths 0
execute as @a unless score @s ak.streak matches -2147483648.. run scoreboard players set @s ak.streak 0
execute as @a unless score @s ak.beststreak matches -2147483648.. run scoreboard players set @s ak.beststreak 0
execute as @a unless score @s ak.wins matches -2147483648.. run scoreboard players set @s ak.wins 0
execute as @a[tag=!ak.nohud] run function aksmp:ui/hud
execute as @a[tag=!ak.nohud] unless score @s ak.xps = @s ak.xp run function aksmp:ui/xpbar_pre
scoreboard players remove @a[scores={ak.gaint=1..}] ak.gaint 1
scoreboard players set @a[scores={ak.gaint=0}] ak.gain 0
function aksmp:ui/panel_sec
scoreboard players add #side ak.cfg 1
execute if score #side ak.cfg matches 40.. run scoreboard players set #side ak.cfg 0
execute if score #side ak.cfg matches 0 run scoreboard objectives setdisplay sidebar.team.white ak.money
execute if score #side ak.cfg matches 8 run scoreboard objectives setdisplay sidebar.team.white ak.kills
execute if score #side ak.cfg matches 16 run scoreboard objectives setdisplay sidebar.team.white ak.wins
execute if score #side ak.cfg matches 24 run scoreboard objectives setdisplay sidebar.team.white ak.lv
execute if score #side ak.cfg matches 32 run scoreboard objectives setdisplay sidebar.team.white ak.beststreak
scoreboard players add #lbt ak.cfg 1
execute if score #lbt ak.cfg matches 30.. run scoreboard players set #lbt ak.cfg 0
execute if score #lbt ak.cfg matches 5 as @a run function aksmp:lb/mirror_pre
execute if score #lbt ak.cfg matches 6 run function aksmp:lb/board {b:1}
execute if score #lbt ak.cfg matches 7 run function aksmp:lb/board {b:2}
execute if score #lbt ak.cfg matches 8 run function aksmp:lb/board {b:3}
execute if score #lbt ak.cfg matches 9 run function aksmp:lb/board {b:4}
