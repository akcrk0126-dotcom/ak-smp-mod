execute store result storage aksmp:tmp m.id int 1 run scoreboard players get #seller ak.auc
function aksmp:mail/send with storage aksmp:tmp m
function aksmp:mail/notify with storage aksmp:tmp m
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"경매 유찰 — 입찰자가 없어 판매자에게 반환됩니다.","color":"gray"}]
