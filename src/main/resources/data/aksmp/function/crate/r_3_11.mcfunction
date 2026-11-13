give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:sharpness":7}] 1
title @s subtitle {"text":"날카로움 VII 책","color":"white"}
title @s title {"text":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅 상자] ","color":"light_purple","bold":true},{"text":"날카로움 VII 책 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
