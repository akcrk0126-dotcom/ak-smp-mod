execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute unless score @s tpa matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"상대 ID를 입력하세요. /trigger who","color":"red"}]
scoreboard players operation #id ak.tmp = @s tpa
tag @s add ak.req
execute as @a[tag=!ak.req] if score @s ak.id = #id ak.tmp run function aksmp:tp/tpa_recv
tag @s remove ak.req
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"텔레포트 요청을 보냈습니다. (상대가 접속 중이어야 합니다)","color":"gray"}]
