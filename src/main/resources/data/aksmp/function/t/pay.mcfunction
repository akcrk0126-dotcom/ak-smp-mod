execute unless score @s ak.payto matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"먼저 받는 사람을 정하세요 (메뉴 > 송금)","color":"red"}]
execute unless score @s pay matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"금액은 1 이상","color":"red"}]
execute if score @s ak.money < @s pay run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"잔액이 부족합니다.","color":"red"}]
execute if score @s ak.payto = @s ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"자신에게는 보낼 수 없습니다.","color":"red"}]
scoreboard players operation @s ak.money -= @s pay
execute store result storage aksmp:tmp b.id int 1 run scoreboard players get @s ak.payto
execute store result storage aksmp:tmp b.amt int 1 run scoreboard players get @s pay
function aksmp:eco/pay_id with storage aksmp:tmp b
function aksmp:eco/pay_msg with storage aksmp:tmp b
scoreboard players set @s ak.payto 0
