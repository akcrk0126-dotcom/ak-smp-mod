scoreboard players set #n ak.tmp 0
execute if score #j1 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute if score #j2 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute if score #j3 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute if score #j4 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute if score #j5 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute if score #j6 ak.jleft matches 1.. run scoreboard players add #n ak.tmp 1
execute store result storage aksmp:tmp jb.n int 1 run scoreboard players get #n ak.tmp
function aksmp:job/board2 with storage aksmp:tmp jb
