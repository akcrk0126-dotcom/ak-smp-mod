scoreboard players operation #s ak.tmp = @s ak.money
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.xp
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.lv
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.kills
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.deaths
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.wins
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.losses
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.streak
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.beststreak
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.job
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.claims
scoreboard players operation #s ak.tmp *= #31 ak.cfg
scoreboard players operation #s ak.tmp += @s ak.slot
execute if score @s ak.psum = #s ak.tmp run return 0
scoreboard players operation @s ak.psum = #s ak.tmp
execute store result storage aksmp:tmp pn.k int 1 run scoreboard players get @s ak.slot
execute store result storage aksmp:tmp pn.lv int 1 run scoreboard players get @s ak.lv
execute store result storage aksmp:tmp pn.xp int 1 run scoreboard players get @s ak.xp
execute store result storage aksmp:tmp pn.need int 1 run scoreboard players get @s ak.xpn
execute store result storage aksmp:tmp pn.money int 1 run scoreboard players get @s ak.money
execute store result storage aksmp:tmp pn.kills int 1 run scoreboard players get @s ak.kills
execute store result storage aksmp:tmp pn.deaths int 1 run scoreboard players get @s ak.deaths
execute store result storage aksmp:tmp pn.wins int 1 run scoreboard players get @s ak.wins
execute store result storage aksmp:tmp pn.losses int 1 run scoreboard players get @s ak.losses
execute store result storage aksmp:tmp pn.streak int 1 run scoreboard players get @s ak.streak
execute store result storage aksmp:tmp pn.best int 1 run scoreboard players get @s ak.beststreak
execute store result storage aksmp:tmp pn.claims int 1 run scoreboard players get @s ak.claims
function aksmp:ui/panel with storage aksmp:tmp pn
