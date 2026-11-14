give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:protection":5}] 1
title @s subtitle {"translate":"aksmp.t.f719cb86","fallback":"보호 V 책","color":"white"}
title @s title {"translate":"aksmp.t.ea1c1940","fallback":"[영웅]","color":"dark_purple","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9f5a92cc","fallback":"[영웅] ","color":"dark_purple","bold":true},{"translate":"aksmp.t.f8868745","fallback":"보호 V 책 획득!","color":"white"}]
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.ebc2fb95","fallback":" 님이 가챠에서 "},{"translate":"aksmp.t.98d68dec","fallback":"[영웅] 보호 V 책","color":"dark_purple","bold":true},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
