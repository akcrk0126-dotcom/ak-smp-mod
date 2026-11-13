$execute unless data storage aksmp:shop s$(k)[0] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"진열된 물건이 없습니다. 물건을 들고 우클릭하면 진열됩니다.","color":"gray"}]
$data modify storage aksmp:tmp item set from storage aksmp:shop s$(k)[-1].item
$data remove storage aksmp:shop s$(k)[-1]
execute at @s run function aksmp:util/give_tmp
$function aksmp:plot/refresh {k:$(k)}
