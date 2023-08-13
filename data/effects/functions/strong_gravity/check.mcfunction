execute store result score $system effects.strong_gravity.check_time run time query gametime
execute as @e[type=#minecraft:mobs] if score @s effects.strong_gravity.check_time = $system effects.strong_gravity.check_time run function effects:strong_gravity/counter
