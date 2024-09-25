execute as @a unless predicate weapons:misc/lily_pad/selected run scoreboard players reset @s weapons.lily_pad.use
execute as @a if score @s weapons.lily_pad.use matches 1.. at @s if predicate weapons:misc/lily_pad/selected run function weapons:misc/lily_pad/cast
execute as @e[type=item_display,tag=weapons.lily_pad] at @s run function weapons:misc/lily_pad/move_and_damage




