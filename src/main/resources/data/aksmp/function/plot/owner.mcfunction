$execute unless items entity @s weapon.mainhand * run return run function aksmp:plot/unstock {k:$(k)}
execute unless score @s ak.price matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.99f45a3e","fallback":"먼저 가격을 정하세요: /trigger price set <코인> (메뉴 > 판매·경제 > 진열 가격 설정)","color":"red"}]
$execute if data storage aksmp:shop s$(k)[26] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2d4a9ffd","fallback":"진열대가 가득 찼습니다. (27칸)","color":"red"}]
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
data modify storage aksmp:tmp e set value {price:0}
data modify storage aksmp:tmp e.item set from block 0 -64 0 Items[0]
data remove storage aksmp:tmp e.item.Slot
item replace block 0 -64 0 container.0 with minecraft:air
execute unless data storage aksmp:tmp e.item.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.b7d30335","fallback":"진열에 실패했습니다. 다시 시도하세요.","color":"red"}]
execute store result storage aksmp:tmp e.price int 1 run scoreboard players get @s ak.price
$data modify storage aksmp:shop s$(k) append from storage aksmp:tmp e
item replace entity @s weapon.mainhand with minecraft:air
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.aa9650c7","fallback":"진열 완료! 가격 ","color":"green"},{"score":{"name":"@s","objective":"ak.price"},"color":"yellow"},{"translate":"aksmp.t.488f6160","fallback":" 코인","color":"green"}]
$function aksmp:plot/refresh {k:$(k)}
