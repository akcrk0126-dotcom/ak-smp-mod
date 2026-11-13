tag @a[scores={ak.q=2},tag=ak.hub,tag=!ak.inmatch,limit=4,sort=random] add ak.inmatch
tag @a[tag=ak.inmatch,limit=2,sort=random] add ak.red
tag @a[tag=ak.inmatch,tag=!ak.red] add ak.blue
scoreboard players set #mode ak.arena 2
function aksmp:arena/begin
