scoreboard players operation #o ak.tmp = @s ak.cid
execute positioned ~-16.5 -64 ~-16.5 as @a[dx=32,dy=384,dz=32,gamemode=!creative,gamemode=!spectator] unless score @s ak.id = #o ak.tmp run function aksmp:claim/intruder
