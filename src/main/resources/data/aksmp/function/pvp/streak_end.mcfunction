execute if score @s ak.streak matches 3.. run tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"gray"},{"text":" 님의 "},{"score":{"name":"@s","objective":"ak.streak"},"color":"yellow"},{"text":"연속 킬이 끝났습니다."}]
scoreboard players set @s ak.streak 0
