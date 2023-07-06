execute as @a unless predicate weapons:lotus_leaf/selected run scoreboard players reset @s weapons.+10.use
execute as @e[tag=weapons.lotus_leaf] at @s unless entity @a[distance=..20] run function weapons:lotus_leaf/back

execute as @e[tag=weapons.lotus_leaf] at @s anchored eyes if entity @a[distance=..20] run function weapons:lotus_leaf/move_and_damage

execute as @e[tag=weapons.lotus_leaf] at @s facing entity @a[tag=back_target,limit=1] eyes run tp @s ^ ^ ^0.8




