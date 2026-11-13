tag @e[type=minecraft:marker,tag=ak.csel] remove ak.csel
tag @s add ak.me
execute at @s positioned ~-17 -64 ~-17 as @e[type=minecraft:marker,tag=ak.claim,dx=33,dy=384,dz=33] if score @s ak.cid = @a[tag=ak.me,limit=1] ak.id at @s positioned ~-16.5 -64 ~-16.5 if entity @a[tag=ak.me,dx=32,dy=384,dz=32] run tag @s add ak.csel
tag @s remove ak.me
