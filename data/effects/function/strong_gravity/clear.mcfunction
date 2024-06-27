tag @s remove effects.strong_gravity
scoreboard players reset @s effects.strong_gravity.check_time
scoreboard players reset @s effects.strong_gravity.duration
scoreboard players reset @s effects.strong_gravity.pos_y
scoreboard players set @s actionbar.custom_effect 1
attribute @s generic.knockback_resistance modifier remove effects:strong_gravity
attribute @s generic.gravity modifier remove effects:strong_gravity
attribute @s generic.jump_strength modifier remove effects:strong_gravity
attribute @s generic.movement_speed modifier remove effects:strong_gravity
