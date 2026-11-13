execute unless score @s trust matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"상대 ID를 입력하세요. ID는 /trigger who 로 확인합니다.","color":"red"}]
execute if score @s trust > #next ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"존재하지 않는 ID입니다.","color":"red"}]
execute if score @s trust = @s ak.id run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"자신은 이미 주인입니다.","color":"red"}]
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
execute store result storage aksmp:tmp a.m int 1 run scoreboard players get @s trust
function aksmp:claim/trust with storage aksmp:tmp a
