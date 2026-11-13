summon minecraft:marker ~ ~ ~ {Tags:["ak.smp"]}
execute store result score #h ak.tmp run data get entity @e[type=minecraft:marker,tag=ak.smp,limit=1] Pos[1]
scoreboard players operation #sum ak.tmp += #h ak.tmp
kill @e[type=minecraft:marker,tag=ak.smp]
