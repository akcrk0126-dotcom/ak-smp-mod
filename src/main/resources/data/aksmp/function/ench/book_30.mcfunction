execute unless items entity @s weapon.mainhand minecraft:book run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3890c03a","fallback":"책을 손에 들고 눌러 주세요. (책 1권 + 600 코인 → 육중 I 인챈트 북)","color":"red"}]
execute unless score @s ak.money matches 600.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.e92b80bc","fallback":"코인이 부족합니다. (600 코인 필요)","color":"red"}]
scoreboard players remove @s ak.money 600
item modify entity @s weapon.mainhand {type:"minecraft:set_count",count:-1,add:true}
give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:density":1}] 1
execute at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.eae00736","fallback":"육중 I 인챈트 북 제작 완료 (-600 코인). 같은 레벨 책 2권을 합성하면 +1 (최대 V)","color":"green"}]
