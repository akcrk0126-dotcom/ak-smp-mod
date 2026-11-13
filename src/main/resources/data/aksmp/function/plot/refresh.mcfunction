$execute as @e[type=minecraft:item_display,tag=ak.vd,tag=ak.s$(k)] run data remove entity @s item
$execute if data storage aksmp:shop s$(k)[0] as @e[type=minecraft:item_display,tag=ak.vd,tag=ak.s$(k)] run data modify entity @s item set from storage aksmp:shop s$(k)[0].item
$execute unless data storage aksmp:shop s$(k)[0] run return run data modify entity @e[type=minecraft:text_display,tag=ak.vt,tag=ak.s$(k),limit=1] text set value {"text":"비어 있음","color":"gray"}
$data modify storage aksmp:tmp r set value {k:$(k)}
$execute store result storage aksmp:tmp r.n int 1 run data get storage aksmp:shop s$(k)
$execute store result storage aksmp:tmp r.price int 1 run data get storage aksmp:shop s$(k)[0].price
$execute store result storage aksmp:tmp r.cnt int 1 run data get storage aksmp:shop s$(k)[0].item.count
function aksmp:plot/refresh_text with storage aksmp:tmp r
