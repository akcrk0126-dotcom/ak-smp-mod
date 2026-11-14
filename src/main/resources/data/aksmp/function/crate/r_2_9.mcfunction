scoreboard players add @s ak.money 8000
title @s subtitle {"translate":"aksmp.t.efc2b43c","fallback":"8000 코인","color":"white"}
title @s title {"translate":"aksmp.t.02852393","fallback":"희귀 상자","color":"aqua","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.2443106b","fallback":"[희귀 상자] ","color":"aqua","bold":true},{"translate":"aksmp.t.8df9dd47","fallback":"8000 코인 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.02852393","fallback":"희귀 상자","color":"aqua","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.efc2b43c","fallback":"8000 코인","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
