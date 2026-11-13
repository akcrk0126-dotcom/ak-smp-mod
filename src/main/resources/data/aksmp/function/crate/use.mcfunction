scoreboard players set @s ak.use 0
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ak:"crate1"}] run return run function aksmp:crate/open {n:1,slot:"weapon.mainhand"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ak:"crate2"}] run return run function aksmp:crate/open {n:2,slot:"weapon.mainhand"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ak:"crate3"}] run return run function aksmp:crate/open {n:3,slot:"weapon.mainhand"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ak:"crate4"}] run return run function aksmp:crate/open {n:4,slot:"weapon.mainhand"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{ak:"crate5"}] run return run function aksmp:crate/open {n:5,slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ak:"crate1"}] run return run function aksmp:crate/open {n:1,slot:"weapon.offhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ak:"crate2"}] run return run function aksmp:crate/open {n:2,slot:"weapon.offhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ak:"crate3"}] run return run function aksmp:crate/open {n:3,slot:"weapon.offhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ak:"crate4"}] run return run function aksmp:crate/open {n:4,slot:"weapon.offhand"}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{ak:"crate5"}] run return run function aksmp:crate/open {n:5,slot:"weapon.offhand"}
