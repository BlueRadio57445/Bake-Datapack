execute as @a unless predicate weapons:lily_pad/selected run scoreboard players reset @s weapons.+10.use
execute as @e[tag=weapons.lily_pad] at @s unless entity @a[distance=..20] run function weapons:lily_pad/back

execute as @e[tag=weapons.lily_pad,tag=weapons.lily_pad.forward] at @s anchored eyes if entity @a[distance=..20] run function weapons:lily_pad/move_and_damage

execute as @e[tag=weapons.lily_pad] at @s facing entity @a[tag=back_target,limit=1] eyes run tp @s ^ ^ ^0.8




