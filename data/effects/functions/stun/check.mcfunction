execute store result score $system effects.stun.check_time run time query gametime
execute as @e[type=#minecraft:mobs] if score @s effects.stun.check_time = $system effects.stun.check_time run function effects:stun/counter
