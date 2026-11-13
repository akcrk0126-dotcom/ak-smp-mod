give @s aksmp:storm_chestplate 1
title @s subtitle {"text":"스톰 흉갑","color":"white"}
title @s title {"text":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅 상자] ","color":"light_purple","bold":true},{"text":"스톰 흉갑 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"영웅 상자","color":"light_purple","bold":true},{"text":"에서 "},{"text":"스톰 흉갑","color":"yellow"},{"text":" 을(를) 뽑았습니다!"}]
