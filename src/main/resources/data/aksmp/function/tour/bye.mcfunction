scoreboard players operation @a[tag=ak.red] ak.tplayed = #round ak.arena
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@a[tag=ak.red]","color":"yellow"},{"translate":"aksmp.t.72bfddb8","fallback":" 부전승으로 다음 라운드 진출!"}]
tag @a remove ak.red
function aksmp:tour/next_round
