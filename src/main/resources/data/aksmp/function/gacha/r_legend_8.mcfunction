give @s minecraft:totem_of_undying 1
title @s subtitle {"text":"불사의 토템","color":"white"}
title @s title {"text":"[전설]","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[전설] ","color":"gold","bold":true},{"text":"불사의 토템 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 가챠에서 "},{"text":"[전설] 불사의 토템","color":"gold","bold":true},{"text":" 을(를) 뽑았습니다!"}]
