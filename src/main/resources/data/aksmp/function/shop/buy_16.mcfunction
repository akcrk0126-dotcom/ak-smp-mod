execute unless score @s ak.money matches 6000.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (6000 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 6000
give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:mending":1}] 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"수선 인챈트 책 구매 완료 (-6000 코인)","color":"green"}]
