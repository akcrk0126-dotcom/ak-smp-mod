scoreboard players add @s ak.money 8000
title @s subtitle {"text":"8000 코인","color":"white"}
title @s title {"text":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[희귀 상자] ","color":"aqua","bold":true},{"text":"8000 코인 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"희귀 상자","color":"aqua","bold":true},{"text":"에서 "},{"text":"8000 코인","color":"yellow"},{"text":" 을(를) 뽑았습니다!"}]
