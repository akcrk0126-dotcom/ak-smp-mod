execute as @a unless score @s ak.pmode matches 0.. run scoreboard players set @s ak.pmode 0
execute as @a[scores={ak.slot=1..}] unless score @s ak.pmode matches 0 run function aksmp:ui/slot_free
execute as @a[scores={ak.pmode=0}] unless score @s ak.slot matches 1.. run function aksmp:ui/slot_assign
execute as @a[tag=!ak.inmatch] run function aksmp:ui/tier
execute as @a[scores={ak.slot=1..}] run function aksmp:ui/panel_check
