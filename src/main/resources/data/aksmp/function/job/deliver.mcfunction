$execute store result score #have ak.tmp run clear @s $(item)[!minecraft:custom_data] 0
execute if score #have ak.tmp matches ..0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"납품할 아이템이 인벤토리에 없습니다.","color":"red"}]
$scoreboard players operation #have ak.tmp < #j$(k) ak.jleft
execute store result storage aksmp:tmp d.n int 1 run scoreboard players get #have ak.tmp
function aksmp:job/deliver2 with storage aksmp:tmp d
