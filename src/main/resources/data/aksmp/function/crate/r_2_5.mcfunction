give @s minecraft:experience_bottle 32
title @s subtitle {"text":"경험치 병 ×32","color":"white"}
title @s title {"text":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[희귀 상자] ","color":"aqua","bold":true},{"text":"경험치 병 ×32 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
