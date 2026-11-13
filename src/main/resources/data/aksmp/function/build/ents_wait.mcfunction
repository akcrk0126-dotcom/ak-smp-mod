scoreboard players add #ew ak.cfg 1
execute if score #ew ak.cfg matches ..60 unless loaded 0 0 0 run return run schedule function aksmp:build/ents_wait 20t replace
execute if score #ew ak.cfg matches ..60 unless loaded -112 0 -112 run return run schedule function aksmp:build/ents_wait 20t replace
execute if score #ew ak.cfg matches ..60 unless loaded 96 0 -112 run return run schedule function aksmp:build/ents_wait 20t replace
execute if score #ew ak.cfg matches ..60 unless loaded -112 0 96 run return run schedule function aksmp:build/ents_wait 20t replace
execute if score #ew ak.cfg matches ..60 unless loaded 96 0 96 run return run schedule function aksmp:build/ents_wait 20t replace
data modify storage aksmp:cfg o.f set value "aksmp:build/ents_run"
function aksmp:at with storage aksmp:cfg o
