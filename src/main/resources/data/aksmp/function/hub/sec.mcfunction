tag @a remove ak.hub
tag @a[distance=..105] add ak.hub
tag @a remove ak.own
execute positioned ~ ~-3 ~ run tag @a[x=61,z=-13,dx=6,dy=40,dz=6,scores={ak.plot=1}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=61,z=7,dx=6,dy=40,dz=6,scores={ak.plot=2}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=70,z=-13,dx=6,dy=40,dz=6,scores={ak.plot=3}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=70,z=7,dx=6,dy=40,dz=6,scores={ak.plot=4}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=79,z=-13,dx=6,dy=40,dz=6,scores={ak.plot=5}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=79,z=7,dx=6,dy=40,dz=6,scores={ak.plot=6}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=88,z=-13,dx=6,dy=40,dz=6,scores={ak.plot=7}] add ak.own
execute positioned ~ ~-3 ~ run tag @a[x=88,z=7,dx=6,dy=40,dz=6,scores={ak.plot=8}] add ak.own
gamemode adventure @a[tag=ak.hub,tag=!ak.own,tag=!ak.inmatch,gamemode=survival]
gamemode survival @a[tag=ak.own,tag=!ak.inmatch,gamemode=adventure]
gamemode adventure @a[tag=ak.cf,tag=!ak.inmatch,gamemode=survival]
gamemode survival @a[tag=!ak.hub,tag=!ak.cf,tag=!ak.inmatch,gamemode=adventure]
effect give @a[tag=ak.hub,tag=!ak.inmatch] minecraft:resistance 3 4 true
effect give @a[tag=ak.hub,tag=!ak.inmatch] minecraft:weakness 3 9 true
effect give @a[tag=ak.hub,tag=!ak.inmatch] minecraft:saturation 3 0 true
execute if score #legacy ak.cfg matches 1 positioned ~ ~-110 ~ run effect give @a[x=-130,z=-130,dx=260,dy=108,dz=260,nbt={OnGround:0b}] minecraft:slow_falling 4 0 true
execute as @e[type=#aksmp:hub_banned,distance=..105] run tp @s ~ -300 ~
execute unless score #state ak.arena matches 0 positioned ~ ~-1 ~ run tp @a[x=-17,z=-17,dx=34,dy=6,dz=34,tag=!ak.inmatch,gamemode=!spectator,gamemode=!creative] 0 ~2 62 180 0
execute as @a[tag=ak.inmatch] run function aksmp:arena/kick_stale
