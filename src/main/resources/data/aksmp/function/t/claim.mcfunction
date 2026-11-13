execute if entity @s[tag=ak.inmatch] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경기 중에는 사용할 수 없습니다.","color":"red"}]
execute at @s unless dimension minecraft:overworld run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"땅은 오버월드에서만 살 수 있습니다.","color":"red"}]
execute if entity @s[distance=..250] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"스폰 허브에서 250칸 이상 떨어진 곳에서만 살 수 있습니다.","color":"red"}]
execute if score @s ak.claims matches 3.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"땅은 최대 3곳까지 가질 수 있습니다.","color":"red"}]
execute at @s positioned ~-33 -64 ~-33 if entity @e[type=minecraft:marker,tag=ak.claim,dx=66,dy=384,dz=66] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"바로 근처에 이미 보호된 땅이 있어서 겹칩니다. 조금 더 떨어진 곳에서 다시 시도하세요.","color":"red"}]
scoreboard players operation #price ak.tmp = @s ak.claims
scoreboard players add #price ak.tmp 1
scoreboard players operation #price ak.tmp *= #claimprice ak.cfg
execute if score @s ak.money < #price ak.tmp run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"코인이 부족합니다. (필요: ","color":"red"},{"score":{"name":"#price","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인)","color":"red"}]
scoreboard players operation @s ak.money -= #price ak.tmp
scoreboard players add @s ak.claims 1
execute at @s align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["ak.claim","ak.cnew"]}
scoreboard players operation @e[type=minecraft:marker,tag=ak.cnew] ak.cid = @s ak.id
scoreboard players set @e[type=minecraft:marker,tag=ak.cnew] ak.showt 20
tag @e[type=minecraft:marker,tag=ak.cnew] remove ak.cnew
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"땅을 샀습니다! (-","color":"green"},{"score":{"name":"#price","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인) 지금 선 곳을 중심으로 33×33칸, 높이 전체가 보호됩니다. 경계가 20초 동안 표시됩니다.","color":"green"}]
