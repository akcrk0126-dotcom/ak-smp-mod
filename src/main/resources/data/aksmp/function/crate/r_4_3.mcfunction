give @s minecraft:netherite_ingot 3
title @s subtitle {"translate":"aksmp.t.098b249e","fallback":"네더라이트 주괴 ×3","color":"white"}
title @s title {"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.70ea4ca3","fallback":"[전설 상자] ","color":"gold","bold":true},{"translate":"aksmp.t.059a2251","fallback":"네더라이트 주괴 ×3 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.098b249e","fallback":"네더라이트 주괴 ×3","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
