function aksmp:build/ents
setblock 0 -64 0 minecraft:barrel
setworldspawn 0 ~1 79 180 0
forceload remove -144 -144 143 -1
forceload remove -144 0 143 143
forceload add 0 0
forceload add 60 -16 96 15
forceload add -74 -14
forceload add -11 -68
forceload add -19 63 -7 63
scoreboard players set #built ak.cfg 1
scoreboard players set #hubver ak.cfg 2
tp @a 0 ~1 79 180 0
tellraw @a {"translate":"aksmp.t.d1d1b667","fallback":"[AK SMP] 스폰 허브 건설 완료! G 키 또는 /trigger menu 로 메뉴를 열어 보세요.","color":"gold"}
