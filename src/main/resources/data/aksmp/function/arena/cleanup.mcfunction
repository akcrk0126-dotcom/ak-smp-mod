execute as @a[tag=ak.inmatch] run function aksmp:arena/release
execute unless score #keepinv ak.cfg matches 1 run gamerule keep_inventory false
gamerule immediate_respawn false
bossbar set aksmp:match visible false
scoreboard players set #state ak.arena 0
