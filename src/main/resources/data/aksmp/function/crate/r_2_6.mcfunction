give @s aksmp:gacha_ticket 2
title @s subtitle {"text":"가챠 티켓 ×2","color":"white"}
title @s title {"text":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[희귀 상자] ","color":"aqua","bold":true},{"text":"가챠 티켓 ×2 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
