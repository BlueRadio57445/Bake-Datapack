scoreboard players operation @s damage = @s effects.strong_gravity.fall_distance
scoreboard players operation @s damage /= $100 general.const
execute store result score @s effects.strong_gravity.pos_y run data get entity @s Pos[1] 100
scoreboard players reset @s effects.strong_gravity.fall_distance
execute if score @s damage matches 1.. run function damage:as/_fall
