execute as @a[tag=ak.fight,scores={ak.death=1..}] run function aksmp:arena/eliminate
execute positioned ~ ~-3 ~ as @a[tag=ak.fight] unless entity @s[x=-19,z=-19,dx=38,dy=24,dz=38] run function aksmp:arena/eliminate
execute as @e[type=minecraft:player,tag=ak.out,tag=!ak.tped] run function aksmp:arena/spectate
execute positioned ~ ~-3 ~ as @e[type=#aksmp:projectiles,x=-19,z=-19,dx=38,dy=24,dz=38] unless function aksmp:arena/proj_ok run kill @s
execute store result score #red ak.arena if entity @a[tag=ak.fight,tag=ak.red]
execute store result score #blue ak.arena if entity @a[tag=ak.fight,tag=ak.blue]
scoreboard players remove #timer ak.arena 1
execute if score #timer ak.arena matches 200 run tellraw @a[tag=ak.hub] [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경기 종료까지 10초! 시간이 끝나면 남은 체력이 많은 팀이 승리합니다.","color":"yellow"}]
execute if score #timer ak.arena matches ..0 run return run function aksmp:arena/timeup
execute if score #red ak.arena matches 0 if score #blue ak.arena matches 0 run return run function aksmp:arena/finish {w:0}
execute if score #blue ak.arena matches 0 run return run function aksmp:arena/finish {w:1}
execute if score #red ak.arena matches 0 run return run function aksmp:arena/finish {w:2}
