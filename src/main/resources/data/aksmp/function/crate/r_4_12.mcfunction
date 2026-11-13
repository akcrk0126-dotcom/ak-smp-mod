give @s aksmp:crate_mythic 1
title @s subtitle {"text":"신화 상자","color":"white"}
title @s title {"text":"전설 상자","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[전설 상자] ","color":"gold","bold":true},{"text":"신화 상자 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"전설 상자","color":"gold","bold":true},{"text":"에서 "},{"text":"신화 상자","color":"yellow"},{"text":" 을(를) 뽑았습니다!"}]
