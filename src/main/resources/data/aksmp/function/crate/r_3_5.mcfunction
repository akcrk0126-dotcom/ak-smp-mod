give @s minecraft:enchanted_golden_apple 2
title @s subtitle {"translate":"aksmp.t.9bf18115","fallback":"마법이 부여된 황금 사과 ×2","color":"white"}
title @s title {"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.68dbfdd1","fallback":"[영웅 상자] ","color":"light_purple","bold":true},{"translate":"aksmp.t.1f271dc3","fallback":"마법이 부여된 황금 사과 ×2 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
