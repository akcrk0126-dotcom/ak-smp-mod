give @s aksmp:crate_rare 1
title @s subtitle {"translate":"aksmp.t.02852393","fallback":"희귀 상자","color":"white"}
title @s title {"translate":"aksmp.t.551812b4","fallback":"일반 상자","color":"white","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.af58f5a9","fallback":"[일반 상자] ","color":"white","bold":true},{"translate":"aksmp.t.16e2596f","fallback":"희귀 상자 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
