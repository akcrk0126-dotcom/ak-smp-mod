give @s minecraft:golden_apple 4
title @s subtitle {"translate":"aksmp.t.5f3ed856","fallback":"황금 사과 ×4","color":"white"}
title @s title {"translate":"aksmp.t.02852393","fallback":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2443106b","fallback":"[희귀 상자] ","color":"aqua","bold":true},{"translate":"aksmp.t.f25396d3","fallback":"황금 사과 ×4 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
