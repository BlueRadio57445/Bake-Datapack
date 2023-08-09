execute store result score $current effects.strong_gravity.pos_y run data get entity @s Pos[1] 100
execute if score @s effects.strong_gravity.pos_y = @s effects.strong_gravity.pos_y run scoreboard players operation @s effects.strong_gravity.pos_y -= $current effects.strong_gravity.pos_y
execute if score @s effects.strong_gravity.pos_y = @s effects.strong_gravity.pos_y if score @s effects.strong_gravity.pos_y matches 0..7840 run scoreboard players operation @s effects.strong_gravity.fall_distance += @s effects.strong_gravity.pos_y
execute if score @s effects.strong_gravity.pos_y matches ..-1 run scoreboard players reset @s effects.strong_gravity.fall_distance
execute at @s if block ~ ~ ~ #minecraft:fall_damage_resetting run scoreboard players reset @s effects.strong_gravity.fall_distance
execute at @s if block ~ ~ ~ minecraft:water run scoreboard players reset @s effects.strong_gravity.fall_distance
scoreboard players operation @s effects.strong_gravity.pos_y = $current effects.strong_gravity.pos_y
