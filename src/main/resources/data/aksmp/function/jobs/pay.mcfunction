$scoreboard players set #p ak.tmp $(p)
$scoreboard players operation #p ak.tmp *= @s $(o)
$scoreboard players set @s $(o) 0
$execute if score #1 ak.cfg matches $(j) if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:silk_touch"}]] run return 0
scoreboard players operation @s ak.xp += #p ak.tmp
$execute unless score @s ak.job matches $(j) run return 0
scoreboard players operation @s ak.money += #p ak.tmp
scoreboard players operation @s ak.jobearn += #p ak.tmp
scoreboard players operation @s ak.gain += #p ak.tmp
scoreboard players set @s ak.gaint 3
execute if entity @s[tag=ak.nohud] run title @s actionbar [{"text":"직업 수입 +","color":"green"},{"score":{"name":"#p","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인","color":"green"}]
