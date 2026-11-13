scoreboard players operation #o ak.tmp = @s ak.cid
execute positioned ~-16.5 -64 ~-16.5 as @a[dx=32,dy=384,dz=32] run function aksmp:claim/inside
execute positioned ~-16.5 -64 ~-16.5 as @e[type=minecraft:creeper,dx=32,dy=384,dz=32] run tp @s ~ -400 ~
execute if score @s ak.showt matches 1.. run function aksmp:claim/show
