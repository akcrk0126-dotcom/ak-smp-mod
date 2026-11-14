execute if entity @s[tag=ak.nofb] run return run function aksmp:player/fb_on
tag @s add ak.nofb
effect clear @s minecraft:night_vision
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.7ffbcb21","fallback":"풀브라이트 끔","color":"gray"}]
