give @s minecraft:golden_apple 4
title @s subtitle {"text":"황금 사과 ×4","color":"white"}
title @s title {"text":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[희귀 상자] ","color":"aqua","bold":true},{"text":"황금 사과 ×4 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
