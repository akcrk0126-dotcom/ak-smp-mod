execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경기 중에는 사용할 수 없습니다.","color":"red"}]
tp @s 0 ~15 31 180 0
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"관중석으로 이동했습니다.","color":"green"}]
