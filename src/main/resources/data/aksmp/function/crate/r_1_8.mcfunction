scoreboard players add @s ak.money 1500
title @s subtitle {"text":"1500 코인","color":"white"}
title @s title {"text":"일반 상자","color":"white","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[일반 상자] ","color":"white","bold":true},{"text":"1500 코인 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
