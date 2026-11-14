execute as @a[tag=ak.tin] run scoreboard players add @s ak.money 100
tag @a remove ak.tin
scoreboard players set #tour ak.arena 0
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.e4691dce","fallback":"참가 인원이 부족해 토너먼트가 취소되었습니다. (참가비 환불)","color":"gray"}]
