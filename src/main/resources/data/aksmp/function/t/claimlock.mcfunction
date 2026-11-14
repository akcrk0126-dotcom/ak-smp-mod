function aksmp:claim/sel
execute unless entity @e[type=minecraft:marker,tag=ak.csel] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9d0bebfe","fallback":"내 땅 안에 서서 사용하세요.","color":"red"}]
execute if entity @e[type=minecraft:marker,tag=ak.csel,tag=ak.locked] run return run function aksmp:claim/unlock
tag @e[type=minecraft:marker,tag=ak.csel] add ak.locked
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9a12dfe9","fallback":"출입 금지를 켰습니다. 동료가 아닌 사람은 이 땅에 들어오면 바로 밖으로 내보내집니다.","color":"yellow"}]
