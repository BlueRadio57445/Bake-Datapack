scoreboard players operation $system effects.strong_gravity.check_time = $gametime general.utils
execute as @e[type=#minecraft:mobs] if score @s effects.strong_gravity.check_time = $system effects.strong_gravity.check_time run function effects:strong_gravity/counter
