execute if score #n ak.tmp matches ..0 run return 0
scoreboard players operation #m ak.tmp = #n ak.tmp
execute if score #m ak.tmp matches 65.. run scoreboard players set #m ak.tmp 64
execute store result storage aksmp:tmp item.count int 1 run scoreboard players get #m ak.tmp
function aksmp:mail/send with storage aksmp:tmp m
scoreboard players operation #n ak.tmp -= #m ak.tmp
function aksmp:job/mail_loop
