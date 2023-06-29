execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 at @s as @e[distance=..5,type=!minecraft:player] run damage @s 2
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 at @s as @e[distance=..5,type=!minecraft:player] run data modify entity @s Motion[1] set value 1.0
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_1 at @s as @e[distance=..5,type=!minecraft:player] run damage @s 2
