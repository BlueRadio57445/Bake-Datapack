execute at @s as @e[type=minecraft:potion,predicate=items:projectile/new_plate] at @s run function items:projectile/plate/modify
scoreboard players set @s items.used.lingering_potion 0
