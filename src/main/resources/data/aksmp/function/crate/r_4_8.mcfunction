give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:sharpness":8}] 1
title @s subtitle {"translate":"aksmp.t.9eea5d55","fallback":"날카로움 VIII 책","color":"white"}
title @s title {"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.70ea4ca3","fallback":"[전설 상자] ","color":"gold","bold":true},{"translate":"aksmp.t.fb28cb37","fallback":"날카로움 VIII 책 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.0e544392","fallback":"전설 상자","color":"gold","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.9eea5d55","fallback":"날카로움 VIII 책","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
