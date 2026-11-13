$execute if data storage aksmp:shop s$(s1)[0] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"진열대의 물건을 먼저 모두 회수하세요.","color":"red"}]
$execute if data storage aksmp:shop s$(s2)[0] run return run tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"진열대의 물건을 먼저 모두 회수하세요.","color":"red"}]
$scoreboard players set #plot$(p) ak.plotown 0
scoreboard players set @s ak.plot 0
scoreboard players operation #h ak.tmp = #plotprice ak.cfg
scoreboard players operation #h ak.tmp /= #2 ak.cfg
scoreboard players operation @s ak.money += #h ak.tmp
$data modify entity @e[type=minecraft:text_display,tag=ak.pt,tag=ak.p$(p),limit=1] text set value {"text":"","extra":[{"text":"상점 #$(p)\n","color":"aqua","bold":true},{"text":"판매 중 · 5000 코인","color":"green"}]}
tellraw @s [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"상점 땅을 반납했습니다. (구매가의 절반 환불)","color":"gray"}]
