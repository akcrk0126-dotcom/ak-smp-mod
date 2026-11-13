give @s minecraft:ender_pearl 6
title @s subtitle {"text":"엔더 진주 ×6","color":"white"}
title @s title {"text":"일반 상자","color":"white","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[일반 상자] ","color":"white","bold":true},{"text":"엔더 진주 ×6 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
