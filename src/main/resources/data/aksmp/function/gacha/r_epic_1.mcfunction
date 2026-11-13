give @s minecraft:diamond 8
title @s subtitle {"text":"다이아몬드 ×8","color":"white"}
title @s title {"text":"[영웅]","color":"dark_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅] ","color":"dark_purple","bold":true},{"text":"다이아몬드 ×8 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 가챠에서 "},{"text":"[영웅] 다이아몬드 ×8","color":"dark_purple","bold":true},{"text":" 을(를) 뽑았습니다!"}]
