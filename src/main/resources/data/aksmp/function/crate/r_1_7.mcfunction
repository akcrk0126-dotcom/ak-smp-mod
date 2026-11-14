give @s minecraft:ender_pearl 6
title @s subtitle {"translate":"aksmp.t.2a05c1d6","fallback":"엔더 진주 ×6","color":"white"}
title @s title {"translate":"aksmp.t.551812b4","fallback":"일반 상자","color":"white","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.af58f5a9","fallback":"[일반 상자] ","color":"white","bold":true},{"translate":"aksmp.t.0ca152c5","fallback":"엔더 진주 ×6 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
