scoreboard players add @s ak.pmode 1
execute if score @s ak.pmode matches 3.. run scoreboard players set @s ak.pmode 0
scoreboard players set @s ak.tier -1
scoreboard players set @s ak.psum -1
execute if score @s ak.pmode matches 0 run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.5f67d317","fallback":"오른쪽 창: 내 정보 (다시 치면 랭킹 → 숨김 순으로 바뀝니다)","color":"green"}]
execute if score @s ak.pmode matches 1 run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3522144b","fallback":"오른쪽 창: 랭킹","color":"yellow"}]
execute if score @s ak.pmode matches 2 run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.144f21c0","fallback":"오른쪽 창을 숨겼습니다. 다시 보려면 /trigger panel","color":"gray"}]
