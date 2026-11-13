scoreboard players set #state ak.arena 2
scoreboard players set #timer ak.arena 6000
execute as @a[tag=ak.fight] run attribute @s minecraft:jump_strength modifier remove aksmp:freeze
effect clear @a[tag=ak.fight] minecraft:slowness
effect clear @a[tag=ak.fight] minecraft:resistance
effect clear @a[tag=ak.fight] minecraft:weakness
title @a[tag=ak.hub] title {"text":"FIGHT!","color":"gold","bold":true}
execute as @a[tag=ak.hub] at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 100 1
