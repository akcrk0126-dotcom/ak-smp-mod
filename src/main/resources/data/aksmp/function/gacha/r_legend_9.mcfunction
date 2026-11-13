give @s minecraft:elytra 1
title @s subtitle {"text":"겉날개","color":"white"}
title @s title {"text":"[전설]","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[전설] ","color":"gold","bold":true},{"text":"겉날개 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 가챠에서 "},{"text":"[전설] 겉날개","color":"gold","bold":true},{"text":" 을(를) 뽑았습니다!"}]
