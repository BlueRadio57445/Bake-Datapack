execute as @a unless predicate weapons:lily_pad/selected run scoreboard players reset @s weapons.+10.use
execute as @a if score @s weapons.+10.use matches 1.. at @s if predicate weapons:lily_pad/selected run function weapons:lily_pad/cast
execute as @e[type=item_display,tag=weapons.lily_pad] at @s run function weapons:lily_pad/move_and_damage




