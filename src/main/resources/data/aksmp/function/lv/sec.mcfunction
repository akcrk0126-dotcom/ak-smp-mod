scoreboard players operation #m ak.tmp = #clock ak.cfg
scoreboard players operation #m ak.tmp %= #60 ak.cfg
execute if score #m ak.tmp matches 0 run scoreboard players add @a ak.xp 10
execute as @a run function aksmp:lv/check
