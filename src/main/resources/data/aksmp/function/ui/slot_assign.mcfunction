function aksmp:ui/slot_pick
execute if score @s ak.slot matches 1.. run scoreboard players set @s ak.tier -1
execute if score @s ak.slot matches 1.. run scoreboard players set @s ak.psum -1
