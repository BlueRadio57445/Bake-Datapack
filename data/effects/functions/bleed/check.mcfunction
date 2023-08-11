execute store result score $system effects.bleed.check_time run time query gametime
execute as @e[type=#minecraft:mobs] if score @s effects.bleed.check_time = $system effects.bleed.check_time run function effects:bleed/switch
