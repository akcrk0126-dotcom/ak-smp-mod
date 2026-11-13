setblock ~ ~ ~ aksmp:deepslate_argonite_ore
scoreboard players set #placed ak.tmp 1
execute if score #placed ak.tmp < #v ak.tmp store result score #r ak.tmp run random value 0..1
$execute if score #placed ak.tmp < #v ak.tmp if score #r ak.tmp matches 1 positioned ~$(dx) ~ ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
execute if score #placed ak.tmp < #v ak.tmp store result score #r ak.tmp run random value 0..1
$execute if score #placed ak.tmp < #v ak.tmp if score #r ak.tmp matches 1 positioned ~ ~ ~$(dz) if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
execute if score #placed ak.tmp < #v ak.tmp store result score #r ak.tmp run random value 0..1
execute if score #placed ak.tmp < #v ak.tmp if score #r ak.tmp matches 1 positioned ~ ~1 ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
execute if score #placed ak.tmp < #v ak.tmp store result score #r ak.tmp run random value 0..1
execute if score #placed ak.tmp < #v ak.tmp if score #r ak.tmp matches 1 positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
$execute if score #placed ak.tmp < #v ak.tmp positioned ~$(dx) ~ ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
$execute if score #placed ak.tmp < #v ak.tmp positioned ~ ~ ~$(dz) if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
execute if score #placed ak.tmp < #v ak.tmp positioned ~ ~1 ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
execute if score #placed ak.tmp < #v ak.tmp positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:deepslate run function aksmp:argonite/add
