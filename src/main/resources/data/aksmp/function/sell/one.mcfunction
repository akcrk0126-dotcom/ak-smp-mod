$execute store result score #c ak.tmp run clear @s $(item)[!minecraft:custom_data]
execute if score #c ak.tmp matches ..0 run return 0
scoreboard players operation #n ak.tmp += #c ak.tmp
$scoreboard players set #p ak.tmp $(price)
scoreboard players operation #c ak.tmp *= #p ak.tmp
scoreboard players operation #sum ak.tmp += #c ak.tmp
