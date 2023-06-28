execute at @s as @e[type=minecraft:egg,predicate=items:projectile/new_raw_egg] run function items:projectile/raw_egg/modify
scoreboard players set @s items.used.egg 0
