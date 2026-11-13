team leave @s
scoreboard players set @s ak.tier -1
item replace block 0 -64 0 container.0 with minecraft:paper
item modify block 0 -64 0 container.0 {type:"minecraft:set_name",entity:"this",name:{selector:"@s"},target:"custom_name"}
execute store result storage aksmp:tmp a.id int 1 run scoreboard players get @s ak.id
function aksmp:player/savename2 with storage aksmp:tmp a
item replace block 0 -64 0 container.0 with minecraft:air
