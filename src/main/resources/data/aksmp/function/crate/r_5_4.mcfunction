give @s aksmp:argonite_helmet 1
title @s subtitle {"translate":"aksmp.t.0fdff8bf","fallback":"아르고나이트 투구","color":"white"}
title @s title {"translate":"aksmp.t.66325d54","fallback":"신화 상자","color":"red","bold":true}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.1745696e","fallback":"[신화 상자] ","color":"red","bold":true},{"translate":"aksmp.t.447a96e9","fallback":"아르고나이트 투구 획득!","color":"white"}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"translate":"aksmp.t.da57594f","fallback":" 님이 "},{"translate":"aksmp.t.66325d54","fallback":"신화 상자","color":"red","bold":true},{"translate":"aksmp.t.1406baf4","fallback":"에서 "},{"translate":"aksmp.t.0fdff8bf","fallback":"아르고나이트 투구","color":"yellow"},{"translate":"aksmp.t.b6a2008d","fallback":" 을(를) 뽑았습니다!"}]
