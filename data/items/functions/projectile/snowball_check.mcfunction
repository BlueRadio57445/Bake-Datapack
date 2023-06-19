execute at @s as @e[type=minecraft:snowball,predicate=items:projectile/new_grenade] at @s run function items:projectile/grenade/modify
scoreboard players set @s items.used.snowball 0
