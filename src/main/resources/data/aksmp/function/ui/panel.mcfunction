$scoreboard players display numberformat ak_l10 ak.b$(k) fixed {"text":"Lv.$(lv)","color":"green"}
$scoreboard players display numberformat ak_l9 ak.b$(k) fixed {"text":"$(xp) / $(need)","color":"white"}
$scoreboard players display numberformat ak_l8 ak.b$(k) fixed {"text":"$(money)","color":"yellow"}
$scoreboard players display numberformat ak_l7 ak.b$(k) fixed {"text":"$(kills) / $(deaths)","color":"white"}
$scoreboard players display numberformat ak_l6 ak.b$(k) fixed {"text":"$(wins)승 $(losses)패","color":"white"}
$scoreboard players display numberformat ak_l5 ak.b$(k) fixed {"text":"$(streak) (최고 $(best))","color":"white"}
$scoreboard players display numberformat ak_l2 ak.b$(k) fixed {"text":"$(claims)곳","color":"white"}
$execute if score @s ak.wins matches 0..2 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"루키","color":"gray"}
$execute if score @s ak.wins matches 3..9 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"브론즈","color":"#CD7F32"}
$execute if score @s ak.wins matches 10..24 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"실버","color":"#C0C0C0"}
$execute if score @s ak.wins matches 25..49 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"골드","color":"gold"}
$execute if score @s ak.wins matches 50..99 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"다이아","color":"aqua"}
$execute if score @s ak.wins matches 100.. run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"text":"마스터","color":"light_purple"}
$execute unless score @s ak.job matches 1..5 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"없음","color":"gray"}
$execute if score @s ak.job matches 1 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"광부","color":"white"}
$execute if score @s ak.job matches 2 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"나무꾼","color":"white"}
$execute if score @s ak.job matches 3 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"농부","color":"white"}
$execute if score @s ak.job matches 4 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"사냥꾼","color":"white"}
$execute if score @s ak.job matches 5 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"text":"어부","color":"white"}
