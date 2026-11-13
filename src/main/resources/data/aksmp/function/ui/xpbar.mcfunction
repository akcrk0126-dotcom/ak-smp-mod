$bossbar add aksmp:p$(id) ""
$bossbar set aksmp:p$(id) color green
$bossbar set aksmp:p$(id) style notched_10
$bossbar set aksmp:p$(id) players @s
$bossbar set aksmp:p$(id) max $(need)
$bossbar set aksmp:p$(id) value $(xp)
$bossbar set aksmp:p$(id) name [{"text":"Lv.$(lv)","color":"green","bold":true},{"text":"    $(xp) / $(need) XP","color":"white","bold":false}]
