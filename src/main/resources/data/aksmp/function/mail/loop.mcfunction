$execute unless data storage aksmp:mail p$(id)[0] run return 0
$data modify storage aksmp:tmp item set from storage aksmp:mail p$(id)[0]
$data remove storage aksmp:mail p$(id)[0]
function aksmp:util/give_tmp
scoreboard players add #n ak.tmp 1
$function aksmp:mail/loop {id:$(id)}
