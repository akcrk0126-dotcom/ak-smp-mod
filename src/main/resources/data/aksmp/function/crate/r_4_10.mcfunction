give @s aksmp:argonite_sword 1
title @s subtitle {"text":"아르고나이트 검","color":"white"}
title @s title {"text":"전설 상자","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[전설 상자] ","color":"gold","bold":true},{"text":"아르고나이트 검 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"전설 상자","color":"gold","bold":true},{"text":"에서 "},{"text":"아르고나이트 검","color":"yellow"},{"text":" 을(를) 뽑았습니다!"}]
