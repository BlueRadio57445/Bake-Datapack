scoreboard players operation $system items.check_time = $gametime general.utils
execute as @e[type=minecraft:item,predicate=items:projectile/is_grenade] if score @s items.check_time = $system items.check_time at @s run function items:projectile/grenade/function
