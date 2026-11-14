execute unless score @s ak.jq matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.b7a54856","fallback":"먼저 수량을 정하세요 (메뉴 > 일자리 > 의뢰 등록)","color":"red"}]
execute unless score @s jpay matches 1..100000 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.6178e0ac","fallback":"개당 보수는 1~100000","color":"red"}]
execute unless items entity @s weapon.mainhand *[minecraft:max_stack_size=64] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.aba75b90","fallback":"구하려는 아이템(64개까지 겹쳐지는 것)을 손에 들고 등록하세요.","color":"red"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.136ce4f8","fallback":"특수 아이템은 의뢰할 수 없습니다.","color":"red"}]
scoreboard players operation #cost ak.tmp = @s ak.jq
scoreboard players operation #cost ak.tmp *= @s jpay
execute if score @s ak.money < #cost ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.9dcf25b0","fallback":"예치금 ","color":"red"},{"score":{"name":"#cost","objective":"ak.tmp"},"color":"yellow"},{"translate":"aksmp.t.0281e867","fallback":" 코인이 부족합니다.","color":"red"}]
scoreboard players set #k ak.tmp 0
execute if score #k ak.tmp matches 0 unless score #j1 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 1
execute if score #k ak.tmp matches 0 unless score #j2 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 2
execute if score #k ak.tmp matches 0 unless score #j3 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 3
execute if score #k ak.tmp matches 0 unless score #j4 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 4
execute if score #k ak.tmp matches 0 unless score #j5 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 5
execute if score #k ak.tmp matches 0 unless score #j6 ak.jleft matches 1.. run scoreboard players set #k ak.tmp 6
execute if score #k ak.tmp matches 0 run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.7eb92945","fallback":"의뢰 게시판이 가득 찼습니다. (최대 6건)","color":"red"}]
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
data modify storage aksmp:tmp j set value {}
data modify storage aksmp:tmp j.item set from block 0 -64 0 Items[0].id
item replace block 0 -64 0 container.0 with minecraft:air
execute unless data storage aksmp:tmp j.item run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.283c1bcd","fallback":"등록에 실패했습니다.","color":"red"}]
execute store result storage aksmp:tmp j.pay int 1 run scoreboard players get @s jpay
execute store result storage aksmp:tmp j.left int 1 run scoreboard players get @s ak.jq
execute store result storage aksmp:tmp j.owner int 1 run scoreboard players get @s ak.id
execute store result storage aksmp:tmp j.k int 1 run scoreboard players get #k ak.tmp
scoreboard players operation @s ak.money -= #cost ak.tmp
scoreboard players set @s ak.jq 0
function aksmp:job/store with storage aksmp:tmp j
