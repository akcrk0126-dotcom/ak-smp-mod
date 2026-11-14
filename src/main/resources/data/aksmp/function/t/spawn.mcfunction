execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.f81dc31c","fallback":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute in minecraft:overworld run tp @s 0 ~1 79 180 0
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.db9644df","fallback":"스폰으로 이동했습니다.","color":"green"}]
