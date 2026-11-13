scoreboard players set #t ak.tmp 0
scoreboard players add #clock ak.cfg 1
function aksmp:claim/sec
function aksmp:hub/sec
function aksmp:eco/sec
function aksmp:arena/queue
execute if score #state ak.arena matches 1..2 run function aksmp:arena/bar
function aksmp:tour/sec
execute if score #on ak.auc matches 1 run function aksmp:auc/sec
function aksmp:sets/sec
function aksmp:lv/sec
function aksmp:ui/sec
effect give @a[tag=!ak.nofb] minecraft:night_vision infinite 0 true
execute unless block 0 -64 0 minecraft:barrel run setblock 0 -64 0 minecraft:barrel
function aksmp:argonite/sec
