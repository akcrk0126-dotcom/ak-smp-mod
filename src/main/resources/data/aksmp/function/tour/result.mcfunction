execute if score #winner ak.arena matches 0 run return run function aksmp:tour/draw
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@a[tag=ak.inmatch,tag=!ak.win]","color":"gray"},{"text":" 토너먼트 탈락","color":"gray"}]
tag @a[tag=ak.inmatch,tag=!ak.win] remove ak.tin
