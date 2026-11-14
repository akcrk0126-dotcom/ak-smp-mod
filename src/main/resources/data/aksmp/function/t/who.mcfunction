tag @s add ak.req
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"translate":"aksmp.t.01e72ed6","fallback":"── 접속자 ──","color":"gold"}]
execute as @a run tellraw @a[tag=ak.req] [{"text":" ID "},{"score":{"name":"@s","objective":"ak.id"},"color":"yellow"},{"text":"  "},{"selector":"@s","color":"aqua"},{"translate":"aksmp.t.a54c6818","fallback":"  코인 "},{"score":{"name":"@s","objective":"ak.money"},"color":"yellow"}]
tag @s remove ak.req
