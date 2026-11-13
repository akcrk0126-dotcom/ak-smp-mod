execute store result score #n ak.tmp if entity @a[tag=ak.tin,scores={ak.tteam=0}]
execute if score #n ak.tmp < #tmode ak.arena run return 0
scoreboard players add #tn ak.tmp 1
execute if score #tmode ak.arena matches 1 as @a[tag=ak.tin,scores={ak.tteam=0},limit=1,sort=random] run scoreboard players operation @s ak.tteam = #tn ak.tmp
execute if score #tmode ak.arena matches 2 as @a[tag=ak.tin,scores={ak.tteam=0},limit=2,sort=random] run scoreboard players operation @s ak.tteam = #tn ak.tmp
execute if score #tmode ak.arena matches 3 as @a[tag=ak.tin,scores={ak.tteam=0},limit=3,sort=random] run scoreboard players operation @s ak.tteam = #tn ak.tmp
function aksmp:tour/form
