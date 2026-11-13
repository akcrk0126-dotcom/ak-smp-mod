execute if score #boot ak.cfg matches 1 run function aksmp:boot
function aksmp:triggers
execute as @a[tag=!ak.init] run function aksmp:player/init
execute as @a unless score @s ak.mig matches 3.. run function aksmp:player/migrate
execute as @a[scores={ak.leave=1..}] run function aksmp:player/rejoin
execute as @a[scores={ak.death=1..},tag=!ak.inmatch] run function aksmp:player/death
execute as @a[scores={ak.kev=1..}] run function aksmp:pvp/kill
execute as @a[scores={ak.use=1..}] at @s run function aksmp:crate/use
execute as @e[type=minecraft:marker,tag=ak.locked] at @s run function aksmp:claim/guard
execute as @e[type=minecraft:interaction,tag=ak.i] at @s on target run function aksmp:click/route
execute unless score #state ak.arena matches 0 run function aksmp:arena/tick
execute as @a[scores={ak.ganim=1..}] at @s run function aksmp:gacha/anim
scoreboard players add #t ak.tmp 1
execute if score #t ak.tmp matches 20.. run function aksmp:sec
execute as @a unless score @s ak.ver matches 5.. run function aksmp:player/newver
