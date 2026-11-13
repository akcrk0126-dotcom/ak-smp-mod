tag @s add ak.init
scoreboard players add #next ak.id 1
scoreboard players operation @s ak.id = #next ak.id
scoreboard players set @s ak.mig 3
scoreboard players set @s ak.money 1000
scoreboard players set @s ak.plot 0
scoreboard players set @s ak.q 0
scoreboard players set @s ak.job 0
scoreboard players set @s ak.wins 0
scoreboard players set @s ak.losses 0
scoreboard players set @s ak.leave 0
function aksmp:player/savename
execute in minecraft:overworld run tp @s 0 ~1 79 180 0
give @s minecraft:written_book[minecraft:written_book_content={"title":"AK SMP 가이드","author":"AK SMP","pages":[{"text":"","extra":[{"text":"AK SMP\n","bold":true,"color":"gold"},{"text":"환영합니다!\n\nG 키 또는\n/trigger menu\n로 메뉴를 엽니다.\n\n스폰 허브는 안전 구역이며 블록을 부술 수 없습니다.\n야생은 '야생 텔레포트'를 쓰거나 허브의 네 성문으로 걸어 나가면 됩니다.","color":"black"}]},{"text":"","extra":[{"text":"경제\n","bold":true,"color":"dark_green"},{"text":"화폐: 코인\n/trigger sell 손에 든 종류 판매\n/trigger sellall 전부 판매\n/trigger bal 잔액\n상점가에서 땅을 사면 진열대 2개로 내 상점 운영!\n경매장: 아이템 들고 우클릭","color":"black"}]},{"text":"","extra":[{"text":"격투장\n","bold":true,"color":"dark_red"},{"text":"/trigger duel set 1 (1v1)\nset 2 (2v2), set 3 (3v3)\n3·2·1 카운트다운 후 시작!\n경기 중 사망해도 아이템 유지.\n토너먼트: 메뉴 > 격투장","color":"black"}]},{"text":"","extra":[{"text":"성장\n","bold":true,"color":"dark_purple"},{"text":"가챠: 하루 1회 무료\n아르고나이트: 깊은 곳(Y 0 아래)에 머물면 주변 심층암에 가끔 맺히는 초록 광석 → 굽기 → 대장장이 작업대(네더라이트 강화 형판 + 네더라이트 장비)\n강화소: 강화·합성으로 날카로움·보호 X까지!\n세트 갑옷 4종은 갑옷 장식 형판으로 제작","color":"black"}]},{"text":"","extra":[{"text":"더 많은 기능\n","bold":true,"color":"dark_blue"},{"text":"/trigger hub 허브로\n/trigger top 지상으로\n/trigger rank 랭킹\n상자: /trigger crate set 1~5 로 사서 우클릭\n땅 보호: /trigger claim (33×33칸)\n레벨: 활동하면 경험치, 5레벨마다 상자 보상","color":"black"}]}]}]
give @s minecraft:bread 16
give @s minecraft:stone_sword
give @s minecraft:stone_pickaxe
give @s minecraft:stone_axe
give @s aksmp:gacha_ticket 1
title @s times 10 60 20
title @s subtitle {"text":"G 키로 메뉴를 열 수 있습니다","color":"yellow"}
title @s title {"text":"AK SMP","color":"gold","bold":true}
tellraw @a [{"text":"","extra":[{"text":"[","color":"dark_gray"},{"text":"AK","color":"gold","bold":true},{"text":"] ","color":"dark_gray"}]},{"selector":"@s","color":"yellow"},{"text":" 님이 AK SMP에 처음 왔습니다! 시작 자금 1000 코인 지급 (ID ","color":"white"},{"score":{"name":"@s","objective":"ak.id"},"color":"yellow"},{"text":")","color":"white"}]
