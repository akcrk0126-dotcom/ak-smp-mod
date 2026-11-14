scoreboard players add @s ak.money 12000
title @s subtitle {"translate":"aksmp.t.92b3e150","fallback":"12000 코인","color":"white"}
title @s title {"translate":"aksmp.t.2b834042","fallback":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.68dbfdd1","fallback":"[영웅 상자] ","color":"light_purple","bold":true},{"translate":"aksmp.t.ba6c54b9","fallback":"12000 코인 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
