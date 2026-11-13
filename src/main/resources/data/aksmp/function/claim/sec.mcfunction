tag @a remove ak.cf
tag @a remove ak.inclaim
execute as @e[type=minecraft:marker,tag=ak.claim] at @s run function aksmp:claim/each
execute as @a[tag=ak.wasin,tag=!ak.inclaim] run function aksmp:claim/left
