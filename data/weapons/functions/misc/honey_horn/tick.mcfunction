execute as @a unless predicate weapons:misc/honey_horn/selected_main run scoreboard players reset @s weapons.use.honey_horn
execute as @a if score @s weapons.use.honey_horn matches 1.. if predicate weapons:misc/honey_horn/honey/1 unless score @s weapons.honey_horn.cd1 matches 1.. at @s run function weapons:misc/honey_horn/cast1
execute as @a if score @s weapons.use.honey_horn matches 1.. if predicate weapons:misc/honey_horn/honey/2 at @s run function weapons:misc/honey_horn/cast2
execute as @a if score @s weapons.use.honey_horn matches 1.. if predicate weapons:misc/honey_horn/honey/4 at @s run function weapons:misc/honey_horn/cast4
execute as @a if score @s weapons.use.honey_horn matches 1.. if predicate weapons:misc/honey_horn/honey/3 unless score @s weapons.honey_horn.cd2 matches 1.. at @s run function weapons:misc/honey_horn/cast3
execute as @e[tag=honey_spring] at @s run effect give @a[distance=..10] regeneration 2 1
execute as @e[tag=honey_spring] at @s run effect give @a[distance=..10] resistance 2 0
execute as @e[tag=honey_spring] at @s anchored eyes run particle happy_villager ^ ^.5 ^10 .1 .1 .1 0 10
execute as @e[tag=honey_spring] at @s run tp @s ~ ~ ~ ~5 ~





#
execute as @a if score @s weapons.honey_horn.cd1 matches 1.. run scoreboard players remove @s weapons.honey_horn.cd1 1
execute as @a if score @s weapons.honey_horn.cd2 matches 1.. run scoreboard players remove @s weapons.honey_horn.cd2 1
execute as @e[tag=honey_spring] run scoreboard players add @s weapons.honey_horn.cd2 1
execute as @e[tag=honey_spring] if score @s weapons.honey_horn.cd2 matches 600.. run kill @s