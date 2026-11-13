$execute if score #mb ak.tmp matches 1 run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:stored_enchantments":$(m)}}
$execute if score #mb ak.tmp matches 0 run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:enchantments":$(m)}}
