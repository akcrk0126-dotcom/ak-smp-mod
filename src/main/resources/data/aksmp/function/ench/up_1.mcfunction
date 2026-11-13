execute unless items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:1}}]] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"손에 든 아이템에 날카로움 인챈트가 없습니다.","color":"red"}]
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:10}}]] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"날카로움은(는) 이미 최대 레벨(10)입니다.","color":"gray"}]
scoreboard players set #cost ak.tmp 0
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:1,max:1}}]] run scoreboard players set #cost ak.tmp 150
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:2,max:2}}]] run scoreboard players set #cost ak.tmp 600
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:3,max:3}}]] run scoreboard players set #cost ak.tmp 1350
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:4,max:4}}]] run scoreboard players set #cost ak.tmp 2400
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:5,max:5}}]] run scoreboard players set #cost ak.tmp 3750
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:6,max:6}}]] run scoreboard players set #cost ak.tmp 5400
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:7,max:7}}]] run scoreboard players set #cost ak.tmp 7350
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:8,max:8}}]] run scoreboard players set #cost ak.tmp 9600
execute if items entity @s weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:{min:9,max:9}}]] run scoreboard players set #cost ak.tmp 12150
execute if score #cost ak.tmp matches 0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"강화할 수 없습니다.","color":"red"}]
execute if score @s ak.money < #cost ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (","color":"red"},{"score":{"name":"#cost","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인 필요)","color":"red"}]
scoreboard players operation @s ak.money -= #cost ak.tmp
item modify entity @s weapon.mainhand {type:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":1},add:true}
execute at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.2
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"날카로움 강화 성공! (-","color":"green"},{"score":{"name":"#cost","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인)","color":"green"}]
