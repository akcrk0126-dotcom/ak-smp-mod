$scoreboard players set #i$(pid) ak.lbp 1
$data modify storage aksmp:lbs b$(b)r$(r) set value {v:$(v)}
$data modify storage aksmp:lbs b$(b)r$(r).name set from storage aksmp:names p$(pid)
$data modify entity @e[type=minecraft:text_display,tag=ak.lb$(b),limit=1] text.extra[$(ni)] set from storage aksmp:names p$(pid)
$data modify entity @e[type=minecraft:text_display,tag=ak.lb$(b),limit=1] text.extra[$(vi)] set value {"text":"  $(v)","color":"yellow"}
