$execute unless data storage aksmp:shop s$(k)[0] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"품절입니다.","color":"gray"}]
$execute if score @s ak.plot matches $(p) run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"내 상점 물건입니다. 빈손으로 진열대를 우클릭하면 회수됩니다.","color":"gray"}]
$execute store result score #price ak.tmp run data get storage aksmp:shop s$(k)[0].price
execute if score @s ak.money < #price ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다.","color":"red"}]
scoreboard players operation @s ak.money -= #price ak.tmp
$data modify storage aksmp:tmp item set from storage aksmp:shop s$(k)[0].item
$data remove storage aksmp:shop s$(k)[0]
execute at @s run function aksmp:util/give_tmp
$execute store result storage aksmp:tmp b.id int 1 run scoreboard players get #plot$(p) ak.plotown
execute store result storage aksmp:tmp b.amt int 1 run scoreboard players get #price ak.tmp
function aksmp:eco/pay_id with storage aksmp:tmp b
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"구매 완료 (-","color":"green"},{"score":{"name":"#price","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인)","color":"green"}]
$function aksmp:plot/refresh {k:$(k)}
