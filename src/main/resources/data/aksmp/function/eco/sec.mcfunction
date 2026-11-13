execute as @a run function aksmp:eco/collect_pre
scoreboard players add @a ak.pt 1
execute as @a[scores={ak.pt=1800..}] run function aksmp:eco/playtime
function aksmp:jobs/sec
