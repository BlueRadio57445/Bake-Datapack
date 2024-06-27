tag @s remove effects.stun
scoreboard players reset @s effects.stun.check_time
scoreboard players reset @s effects.stun.duration
scoreboard players set @s actionbar.custom_effect 1

attribute @s generic.jump_strength modifier remove effects:stun
attribute @s generic.movement_speed modifier remove effects:stun
