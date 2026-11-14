give @s minecraft:enchanted_golden_apple 8
title @s subtitle {"translate":"aksmp.t.7b24680b","fallback":"마법이 부여된 황금 사과 ×8","color":"white"}
title @s title {"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.70ea4ca3","fallback":"[전설 상자] ","color":"gold","bold":true},{"translate":"aksmp.t.8a09975d","fallback":"마법이 부여된 황금 사과 ×8 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.7b24680b","fallback":"마법이 부여된 황금 사과 ×8","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
