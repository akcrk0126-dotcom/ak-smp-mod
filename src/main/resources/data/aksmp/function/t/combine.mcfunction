execute unless items entity @s weapon.mainhand * run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"합칠 대상을 손에 들어 주세요. 주 손 = 합칠 대상(아이템이나 인챈트 북), 반대 손(F 키) = 재료(인챈트 북이나 같은 종류 아이템)","color":"red"}]
execute unless items entity @s weapon.offhand * run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"재료를 반대 손에 들어 주세요. 주 손 = 합칠 대상(아이템이나 인챈트 북), 반대 손(F 키) = 재료(인챈트 북이나 같은 종류 아이템)","color":"red"}]
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
item replace block 0 -64 0 container.1 from entity @s weapon.offhand
data remove storage aksmp:tmp ce
data modify storage aksmp:tmp ce.mi set from block 0 -64 0 Items[{Slot:0b}]
data modify storage aksmp:tmp ce.oi set from block 0 -64 0 Items[{Slot:1b}]
item replace block 0 -64 0 container.0 with minecraft:air
item replace block 0 -64 0 container.1 with minecraft:air
scoreboard players set #mb ak.tmp 0
execute if items entity @s weapon.mainhand minecraft:enchanted_book run scoreboard players set #mb ak.tmp 1
scoreboard players set #ob ak.tmp 0
execute if items entity @s weapon.offhand minecraft:enchanted_book run scoreboard players set #ob ak.tmp 1
scoreboard players set #mc ak.tmp 1
execute store result score #mc ak.tmp run data get storage aksmp:tmp ce.mi.count
execute if score #mc ak.tmp matches 2.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"합칠 대상은 1개만 들어 주세요.","color":"red"}]
scoreboard players set #diff ak.tmp 0
data modify storage aksmp:tmp ce.id set from storage aksmp:tmp ce.mi.id
execute if score #ob ak.tmp matches 0 store success score #diff ak.tmp run data modify storage aksmp:tmp ce.id set from storage aksmp:tmp ce.oi.id
execute if score #diff ak.tmp matches 1 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"반대 손에는 인챈트 북이나 같은 종류의 아이템을 들어야 합니다.","color":"red"}]
data modify storage aksmp:tmp ce.m set value {}
data modify storage aksmp:tmp ce.o set value {}
execute if score #mb ak.tmp matches 1 run data modify storage aksmp:tmp ce.m set from storage aksmp:tmp ce.mi.components."minecraft:stored_enchantments"
execute if score #mb ak.tmp matches 0 run data modify storage aksmp:tmp ce.m set from storage aksmp:tmp ce.mi.components."minecraft:enchantments"
execute if score #ob ak.tmp matches 1 run data modify storage aksmp:tmp ce.o set from storage aksmp:tmp ce.oi.components."minecraft:stored_enchantments"
execute if score #ob ak.tmp matches 0 run data modify storage aksmp:tmp ce.o set from storage aksmp:tmp ce.oi.components."minecraft:enchantments"
scoreboard players set #chg ak.tmp 0
scoreboard players set #skip ak.tmp 0
scoreboard players set #cost ak.tmp 0
execute if data storage aksmp:tmp ce.o."minecraft:aqua_affinity" run function aksmp:ench/c/aqua_affinity
execute if data storage aksmp:tmp ce.o."minecraft:bane_of_arthropods" run function aksmp:ench/c/bane_of_arthropods
execute if data storage aksmp:tmp ce.o."minecraft:binding_curse" run function aksmp:ench/c/binding_curse
execute if data storage aksmp:tmp ce.o."minecraft:blast_protection" run function aksmp:ench/c/blast_protection
execute if data storage aksmp:tmp ce.o."minecraft:breach" run function aksmp:ench/c/breach
execute if data storage aksmp:tmp ce.o."minecraft:channeling" run function aksmp:ench/c/channeling
execute if data storage aksmp:tmp ce.o."minecraft:density" run function aksmp:ench/c/density
execute if data storage aksmp:tmp ce.o."minecraft:depth_strider" run function aksmp:ench/c/depth_strider
execute if data storage aksmp:tmp ce.o."minecraft:efficiency" run function aksmp:ench/c/efficiency
execute if data storage aksmp:tmp ce.o."minecraft:feather_falling" run function aksmp:ench/c/feather_falling
execute if data storage aksmp:tmp ce.o."minecraft:fire_aspect" run function aksmp:ench/c/fire_aspect
execute if data storage aksmp:tmp ce.o."minecraft:fire_protection" run function aksmp:ench/c/fire_protection
execute if data storage aksmp:tmp ce.o."minecraft:flame" run function aksmp:ench/c/flame
execute if data storage aksmp:tmp ce.o."minecraft:fortune" run function aksmp:ench/c/fortune
execute if data storage aksmp:tmp ce.o."minecraft:frost_walker" run function aksmp:ench/c/frost_walker
execute if data storage aksmp:tmp ce.o."minecraft:impaling" run function aksmp:ench/c/impaling
execute if data storage aksmp:tmp ce.o."minecraft:infinity" run function aksmp:ench/c/infinity
execute if data storage aksmp:tmp ce.o."minecraft:knockback" run function aksmp:ench/c/knockback
execute if data storage aksmp:tmp ce.o."minecraft:looting" run function aksmp:ench/c/looting
execute if data storage aksmp:tmp ce.o."minecraft:loyalty" run function aksmp:ench/c/loyalty
execute if data storage aksmp:tmp ce.o."minecraft:luck_of_the_sea" run function aksmp:ench/c/luck_of_the_sea
execute if data storage aksmp:tmp ce.o."minecraft:lunge" run function aksmp:ench/c/lunge
execute if data storage aksmp:tmp ce.o."minecraft:lure" run function aksmp:ench/c/lure
execute if data storage aksmp:tmp ce.o."minecraft:mending" run function aksmp:ench/c/mending
execute if data storage aksmp:tmp ce.o."minecraft:multishot" run function aksmp:ench/c/multishot
execute if data storage aksmp:tmp ce.o."minecraft:piercing" run function aksmp:ench/c/piercing
execute if data storage aksmp:tmp ce.o."minecraft:power" run function aksmp:ench/c/power
execute if data storage aksmp:tmp ce.o."minecraft:projectile_protection" run function aksmp:ench/c/projectile_protection
execute if data storage aksmp:tmp ce.o."minecraft:protection" run function aksmp:ench/c/protection
execute if data storage aksmp:tmp ce.o."minecraft:punch" run function aksmp:ench/c/punch
execute if data storage aksmp:tmp ce.o."minecraft:quick_charge" run function aksmp:ench/c/quick_charge
execute if data storage aksmp:tmp ce.o."minecraft:respiration" run function aksmp:ench/c/respiration
execute if data storage aksmp:tmp ce.o."minecraft:riptide" run function aksmp:ench/c/riptide
execute if data storage aksmp:tmp ce.o."minecraft:sharpness" run function aksmp:ench/c/sharpness
execute if data storage aksmp:tmp ce.o."minecraft:silk_touch" run function aksmp:ench/c/silk_touch
execute if data storage aksmp:tmp ce.o."minecraft:smite" run function aksmp:ench/c/smite
execute if data storage aksmp:tmp ce.o."minecraft:soul_speed" run function aksmp:ench/c/soul_speed
execute if data storage aksmp:tmp ce.o."minecraft:sweeping_edge" run function aksmp:ench/c/sweeping_edge
execute if data storage aksmp:tmp ce.o."minecraft:swift_sneak" run function aksmp:ench/c/swift_sneak
execute if data storage aksmp:tmp ce.o."minecraft:thorns" run function aksmp:ench/c/thorns
execute if data storage aksmp:tmp ce.o."minecraft:unbreaking" run function aksmp:ench/c/unbreaking
execute if data storage aksmp:tmp ce.o."minecraft:vanishing_curse" run function aksmp:ench/c/vanishing_curse
execute if data storage aksmp:tmp ce.o."minecraft:wind_burst" run function aksmp:ench/c/wind_burst
execute if score #chg ak.tmp matches 0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"합칠 수 있는 인챈트가 없습니다. (재료에 인챈트가 없거나, 이미 최대 레벨이거나, 이 아이템에 붙일 수 없는 인챈트)","color":"red"}]
scoreboard players set #sq ak.tmp 30
scoreboard players operation #cost ak.tmp *= #sq ak.tmp
execute if score @s ak.money < #cost ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (","color":"red"},{"score":{"name":"#cost","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인 필요)","color":"red"}]
scoreboard players operation @s ak.money -= #cost ak.tmp
function aksmp:ench/c_apply with storage aksmp:tmp ce
item modify entity @s weapon.offhand {type:"minecraft:set_count",count:-1,add:true}
execute at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"인챈트 합성 완료! ","color":"green"},{"score":{"name":"#chg","objective":"ak.tmp"},"color":"yellow"},{"text":"개 적용 (-","color":"green"},{"score":{"name":"#cost","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인)","color":"green"}]
execute if score #skip ak.tmp matches 1.. run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이 아이템과 맞지 않는 인챈트 ","color":"gray"},{"score":{"name":"#skip","objective":"ak.tmp"},"color":"yellow"},{"text":"개는 빠졌습니다.","color":"gray"}]
