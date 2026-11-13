summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:stone",count:1},PickupDelay:0s,Tags:["ak.new"]}
data modify entity @n[type=minecraft:item,tag=ak.new,distance=..3] Item set from storage aksmp:tmp item
data modify entity @n[type=minecraft:item,tag=ak.new,distance=..3] Owner set from entity @s UUID
tag @e[type=minecraft:item,tag=ak.new] remove ak.new
