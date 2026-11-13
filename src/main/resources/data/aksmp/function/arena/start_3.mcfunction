tag @a[scores={ak.q=3},tag=ak.hub,tag=!ak.inmatch,limit=6,sort=random] add ak.inmatch
tag @a[tag=ak.inmatch,limit=3,sort=random] add ak.red
tag @a[tag=ak.inmatch,tag=!ak.red] add ak.blue
scoreboard players set #mode ak.arena 3
function aksmp:arena/begin
