scoreboard players set @a[tag=!ak.hub,scores={ak.q=1..}] ak.q 0
execute unless score #state ak.arena matches 0 run return 0
execute if score #tour ak.arena matches 2 run return 0
title @a[scores={ak.q=1..},tag=ak.nohud] actionbar {"text":"매치 상대를 기다리는 중... (/trigger leave 로 취소)","color":"yellow"}
execute store result score #n ak.tmp if entity @a[scores={ak.q=1},tag=ak.hub,tag=!ak.inmatch]
execute if score #n ak.tmp matches 2.. run return run function aksmp:arena/start_1
execute store result score #n ak.tmp if entity @a[scores={ak.q=2},tag=ak.hub,tag=!ak.inmatch]
execute if score #n ak.tmp matches 4.. run return run function aksmp:arena/start_2
execute store result score #n ak.tmp if entity @a[scores={ak.q=3},tag=ak.hub,tag=!ak.inmatch]
execute if score #n ak.tmp matches 6.. run return run function aksmp:arena/start_3
