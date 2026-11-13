give @s minecraft:netherite_scrap 2
title @s subtitle {"text":"네더라이트 파편 ×2","color":"white"}
title @s title {"text":"[영웅]","color":"dark_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅] ","color":"dark_purple","bold":true},{"text":"네더라이트 파편 ×2 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 가챠에서 "},{"text":"[영웅] 네더라이트 파편 ×2","color":"dark_purple","bold":true},{"text":" 을(를) 뽑았습니다!"}]
