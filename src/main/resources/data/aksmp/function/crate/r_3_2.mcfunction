scoreboard players add @s ak.money 12000
title @s subtitle {"text":"12000 코인","color":"white"}
title @s title {"text":"영웅 상자","color":"light_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅 상자] ","color":"light_purple","bold":true},{"text":"12000 코인 획득!","color":"white"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
