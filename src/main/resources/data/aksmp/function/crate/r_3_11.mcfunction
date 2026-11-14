give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:sharpness":7}] 1
title @s subtitle {"translate":"aksmp.t.719886a5","fallback":"날카로움 VII 책","color":"white"}
title @s title {"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.68dbfdd1","fallback":"[영웅 상자] ","color":"light_purple","bold":true},{"translate":"aksmp.t.41e97406","fallback":"날카로움 VII 책 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
