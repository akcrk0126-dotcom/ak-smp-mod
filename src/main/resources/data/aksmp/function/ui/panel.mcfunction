$scoreboard players display numberformat ak_l10 ak.b$(k) fixed {"text":"Lv.$(lv)","color":"green"}
$scoreboard players display numberformat ak_l9 ak.b$(k) fixed {"text":"$(xp) / $(need)","color":"white"}
$scoreboard players display numberformat ak_l8 ak.b$(k) fixed {"text":"$(money)","color":"yellow"}
$scoreboard players display numberformat ak_l7 ak.b$(k) fixed {"text":"$(kills) / $(deaths)","color":"white"}
$scoreboard players display numberformat ak_l6 ak.b$(k) fixed {"translate":"aksmp.t.df80addd","fallback":"$(wins)승 $(losses)패","with":[{"text":"$(wins)"},{"text":"$(losses)"}],"color":"white"}
$scoreboard players display numberformat ak_l5 ak.b$(k) fixed {"translate":"aksmp.t.bda1d986","fallback":"$(streak) (최고 $(best))","with":[{"text":"$(streak)"},{"text":"$(best)"}],"color":"white"}
$scoreboard players display numberformat ak_l2 ak.b$(k) fixed {"translate":"aksmp.t.308200be","fallback":"$(claims)곳","with":[{"text":"$(claims)"}],"color":"white"}
$execute if score @s ak.wins matches 0..2 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.0b2d4085","fallback":"루키","color":"gray"}
$execute if score @s ak.wins matches 3..9 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.d3a63bd7","fallback":"브론즈","color":"#CD7F32"}
$execute if score @s ak.wins matches 10..24 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.4deac1c9","fallback":"실버","color":"#C0C0C0"}
$execute if score @s ak.wins matches 25..49 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.dfc7e39e","fallback":"골드","color":"gold"}
$execute if score @s ak.wins matches 50..99 run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.7fc4945e","fallback":"다이아","color":"aqua"}
$execute if score @s ak.wins matches 100.. run scoreboard players display numberformat ak_l4 ak.b$(k) fixed {"translate":"aksmp.t.28761130","fallback":"마스터","color":"light_purple"}
$execute unless score @s ak.job matches 1..5 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.fb497a25","fallback":"없음","color":"gray"}
$execute if score @s ak.job matches 1 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.1c36040d","fallback":"광부","color":"white"}
$execute if score @s ak.job matches 2 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.d4f3d898","fallback":"나무꾼","color":"white"}
$execute if score @s ak.job matches 3 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.1644d469","fallback":"농부","color":"white"}
$execute if score @s ak.job matches 4 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.478abc3f","fallback":"사냥꾼","color":"white"}
$execute if score @s ak.job matches 5 run scoreboard players display numberformat ak_l3 ak.b$(k) fixed {"translate":"aksmp.t.e682c478","fallback":"어부","color":"white"}
