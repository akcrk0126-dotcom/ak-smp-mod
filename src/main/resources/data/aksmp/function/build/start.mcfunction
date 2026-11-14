scoreboard players set #built ak.cfg -1
scoreboard players set #bp ak.cfg 0
scoreboard players set #dt ak.cfg 0
forceload add -144 -144 143 -1
forceload add -144 0 143 143
gamerule respawn_radius 0
schedule function aksmp:build/detect 100t replace
tellraw @a {"translate":"aksmp.t.79f30332","fallback":"[AK SMP] 스폰 허브 건설을 시작합니다. 땅 높이를 재고 지형을 다듬느라 1~2분 정도 걸립니다.","color":"gold"}
