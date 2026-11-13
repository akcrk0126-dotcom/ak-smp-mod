tag @a[scores={ak.q=1},tag=ak.hub,tag=!ak.inmatch,limit=2,sort=random] add ak.inmatch
tag @a[tag=ak.inmatch,limit=1,sort=random] add ak.red
tag @a[tag=ak.inmatch,tag=!ak.red] add ak.blue
scoreboard players set #mode ak.arena 1
function aksmp:arena/begin
