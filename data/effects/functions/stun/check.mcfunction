scoreboard players operation $system effects.stun.check_time = $gametime general.utils
execute as @e[type=#minecraft:mobs] if score @s effects.stun.check_time = $system effects.stun.check_time run function effects:stun/counter
