$scoreboard players set @s effects.strong_gravity.duration $(duration)
scoreboard players operation @s effects.strong_gravity.check_time = $gametime general.utils
tag @s add effects.strong_gravity
execute at @s run particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.1 ~ 0.4 0 0.4 0.05 5 normal
execute if data entity @s {OnGround:1b} store result score @s effects.strong_gravity.pos_y run data get entity @s Pos[1] 100
attribute @s generic.knockback_resistance modifier add 00000C01-0000-0C01-0000-0C0100000C01 "effects:strong_gravity" 0.5 add_value
attribute @s generic.gravity modifier add 00000C01-0000-0C01-0000-0C0100000C01 "effects:strong_gravity" 4 add_multiplied_total
attribute @s generic.jump_strength modifier add 00000C01-0000-0C01-0000-0C0100000C01 "effects:strong_gravity" -0.8 add_multiplied_total
attribute @s generic.movement_speed modifier add 00000C01-0000-0C01-0000-0C0100000C01 "effects:strong_gravity" -0.8 add_multiplied_total
scoreboard players add @s effects.strong_gravity.check_time 20
scoreboard players set @s actionbar.custom_effect 1
schedule function effects:strong_gravity/check 20t append
