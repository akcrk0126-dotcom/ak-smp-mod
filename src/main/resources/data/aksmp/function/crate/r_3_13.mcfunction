give @s minecraft:netherite_ingot 2
title @s subtitle {"translate":"aksmp.t.7e8c1408","fallback":"네더라이트 주괴 ×2","color":"white"}
title @s title {"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.68dbfdd1","fallback":"[영웅 상자] ","color":"light_purple","bold":true},{"translate":"aksmp.t.12e13612","fallback":"네더라이트 주괴 ×2 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.7e8c1408","fallback":"네더라이트 주괴 ×2","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
