execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 at @s as @e[distance=..2,type=!minecraft:player] run damage @s 2
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 at @s as @e[distance=..2,type=!minecraft:player] run data modify entity @s Motion[1] set value 1.0
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_1 at @s as @e[distance=..2,type=!minecraft:player] run damage @s 2

execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 run particle minecraft:crit ~ ~1 ~ .5 .5 .5 0 100
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_1 run particle minecraft:crit ~ ~1 ~ .5 .5 .5 0 100

execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_1 run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 100 1
execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 100 1

execute as @e[tag=heavy_gloves_cast] if predicate weapons:gloves/heavy_gloves_cast_2 run kill @s



