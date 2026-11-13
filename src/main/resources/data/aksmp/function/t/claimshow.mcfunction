execute at @s positioned ~-48 -64 ~-48 run scoreboard players set @e[type=minecraft:marker,tag=ak.claim,dx=96,dy=384,dz=96] ak.showt 15
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"근처 보호된 땅의 경계를 15초 동안 표시합니다.","color":"gray"}]
