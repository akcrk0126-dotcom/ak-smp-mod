scoreboard players add @s ak.money 3000
title @s subtitle {"translate":"aksmp.t.cce33378","fallback":"3000 코인","color":"white"}
title @s title {"translate":"aksmp.t.02852393","fallback":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2443106b","fallback":"[희귀 상자] ","color":"aqua","bold":true},{"translate":"aksmp.t.270e466b","fallback":"3000 코인 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
