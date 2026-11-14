give @s aksmp:gacha_ticket 1
title @s subtitle {"translate":"aksmp.t.7f9c996c","fallback":"가챠 티켓","color":"white"}
title @s title {"translate":"aksmp.t.551812b4","fallback":"일반 상자","color":"white","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.af58f5a9","fallback":"[일반 상자] ","color":"white","bold":true},{"translate":"aksmp.t.9137384a","fallback":"가챠 티켓 획득!","color":"white"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
