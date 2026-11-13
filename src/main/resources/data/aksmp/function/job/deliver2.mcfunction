$clear @s $(item)[!minecraft:custom_data] $(n)
$scoreboard players remove #j$(k) ak.jleft $(n)
$execute store result storage aksmp:jobs j$(k).left int 1 run scoreboard players get #j$(k) ak.jleft
$scoreboard players set #pay ak.tmp $(pay)
$scoreboard players set #n ak.tmp $(n)
scoreboard players operation #pay ak.tmp *= #n ak.tmp
scoreboard players operation @s ak.money += #pay ak.tmp
$data modify storage aksmp:tmp item set value {id:"$(item)",count:1}
$data modify storage aksmp:tmp m set value {id:$(owner)}
function aksmp:job/mail_loop
function aksmp:mail/notify with storage aksmp:tmp m
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"납품 완료! +","color":"green"},{"score":{"name":"#pay","objective":"ak.tmp"},"color":"yellow"},{"text":" 코인","color":"green"}]
function aksmp:job/board
