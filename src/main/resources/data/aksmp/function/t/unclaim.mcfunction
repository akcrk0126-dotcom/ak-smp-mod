function aksmp:claim/sel
execute unless entity @e[type=minecraft:marker,tag=ak.csel] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9d0bebfe","fallback":"내 땅 안에 서서 사용하세요.","color":"red"}]
kill @e[type=minecraft:marker,tag=ak.csel]
scoreboard players remove @s ak.claims 1
scoreboard players add @s ak.money 2500
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.bccd91cb","fallback":"땅을 반납했습니다. (+2500 코인 환불)","color":"gray"}]
