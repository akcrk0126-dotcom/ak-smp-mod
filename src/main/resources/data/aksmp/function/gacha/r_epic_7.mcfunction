give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:protection":5}] 1
title @s subtitle {"text":"보호 V 책","color":"white"}
title @s title {"text":"[영웅]","color":"dark_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"[영웅] ","color":"dark_purple","bold":true},{"text":"보호 V 책 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 가챠에서 "},{"text":"[영웅] 보호 V 책","color":"dark_purple","bold":true},{"text":" 을(를) 뽑았습니다!"}]
