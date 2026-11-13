scoreboard players set #tour ak.arena 1
scoreboard players set #ttime ak.arena 60
scoreboard players set #pool ak.arena 500
scoreboard players add #tid ak.arena 1
tag @a remove ak.tin
title @a times 5 60 15
title @a subtitle {"text":"60초 안에 참가하세요 (참가비 100 코인)","color":"yellow"}
title @a title {"text":"토너먼트 접수 시작!","color":"gold","bold":true}
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"text":"토너먼트 (","color":"gold"},{"score":{"name":"#tmode","objective":"ak.arena"},"color":"yellow"},{"text":" vs ","color":"gold"},{"score":{"name":"#tmode","objective":"ak.arena"},"color":"yellow"},{"text":") 참가 접수 중! ","color":"gold"},{"text":"[참가하기]","color":"green","click_event":{"action":"run_command","command":"/trigger tour"},"hover_event":{"action":"show_text","value":{"text":"/trigger tour"}}},{"text":" 우승 팀이 상금을 모두 가져갑니다. 접수 후 허브에서 대기하세요.","color":"gray"}]
