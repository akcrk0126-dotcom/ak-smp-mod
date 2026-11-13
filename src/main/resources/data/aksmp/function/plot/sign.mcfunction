$data modify entity @e[type=minecraft:text_display,tag=ak.pt,tag=ak.p$(p),limit=1] text set value {"text":"","extra":[{"text":"상점 #$(p)\n","color":"aqua","bold":true},{"text":"?"},{"text":" 님의 상점","color":"white"}]}
$data modify entity @e[type=minecraft:text_display,tag=ak.pt,tag=ak.p$(p),limit=1] text.extra[1] set from storage aksmp:names p$(id)
