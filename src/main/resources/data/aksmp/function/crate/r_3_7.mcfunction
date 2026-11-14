give @s aksmp:tide_chestplate 1
title @s subtitle {"translate":"aksmp.t.2ae88e11","fallback":"타이드 흉갑","color":"white"}
title @s title {"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.68dbfdd1","fallback":"[영웅 상자] ","color":"light_purple","bold":true},{"translate":"aksmp.t.645b1127","fallback":"타이드 흉갑 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.2ae88e11","fallback":"타이드 흉갑","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
