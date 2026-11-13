$execute unless score #j$(k) ak.jleft matches 1.. run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"이미 끝난 의뢰입니다.","color":"gray"}]
$data modify storage aksmp:tmp d set from storage aksmp:jobs j$(k)
$data modify storage aksmp:tmp d.k set value $(k)
function aksmp:job/deliver with storage aksmp:tmp d
