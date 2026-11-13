execute unless score @s ak.bto matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"먼저 대상을 정하세요 (메뉴 > 현상금)","color":"red"}]
execute unless score @s bounty matches 100.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"현상금은 최소 100 코인","color":"red"}]
execute if score @s ak.money < @s bounty run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"잔액이 부족합니다.","color":"red"}]
scoreboard players operation @s ak.money -= @s bounty
execute store result storage aksmp:tmp b.id int 1 run scoreboard players get @s ak.bto
execute store result storage aksmp:tmp b.amt int 1 run scoreboard players get @s bounty
function aksmp:pvp/bounty_add with storage aksmp:tmp b
scoreboard players set @s ak.bto 0
