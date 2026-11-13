scoreboard players add @s ak.money 180000
title @s subtitle {"text":"180000 코인","color":"white"}
title @s title {"text":"신화 상자","color":"red","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[신화 상자] ","color":"red","bold":true},{"text":"180000 코인 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 "},{"text":"신화 상자","color":"red","bold":true},{"text":"에서 "},{"text":"180000 코인","color":"yellow"},{"text":" 을(를) 뽑았습니다!"}]
