execute unless score @s untrust matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.435456bc","fallback":"상대 ID를 입력하세요. ID는 /trigger who 로 확인합니다.","color":"red"}]
execute if score @s untrust > #next ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.8d1a5315","fallback":"존재하지 않는 ID입니다.","color":"red"}]
execute if score @s untrust = @s ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.3db87f31","fallback":"자신은 이미 주인입니다.","color":"red"}]
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
execute store result storage aksmp:tmp a.m int 1 run scoreboard players get @s untrust
function aksmp:claim/untrust with storage aksmp:tmp a
