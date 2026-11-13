effect give @a[tag=ak.fight] minecraft:slowness 1 9 true
effect give @a[tag=ak.fight] minecraft:resistance 1 4 true
effect give @a[tag=ak.fight] minecraft:weakness 1 9 true
scoreboard players remove #timer ak.arena 1
execute if score #timer ak.arena matches 60 run function aksmp:arena/cd {n:"3",c:"red",p:"0.8"}
execute if score #timer ak.arena matches 40 run function aksmp:arena/cd {n:"2",c:"yellow",p:"1.0"}
execute if score #timer ak.arena matches 20 run function aksmp:arena/cd {n:"1",c:"green",p:"1.2"}
execute if score #timer ak.arena matches ..0 run function aksmp:arena/go
