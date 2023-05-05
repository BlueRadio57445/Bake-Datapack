execute on owner at @s positioned 0.0 0.0 0.0 rotated 0 ~ positioned ^ ^ ^1 run tp 00000000-0000-0000-0000-000000000000 ~ ~ ~
execute store result score $cos vehicles.calc run data get entity 00000000-0000-0000-0000-000000000000 Pos[2] 1000
execute store result score $sin vehicles.calc run data get entity 00000000-0000-0000-0000-000000000000 Pos[1] 1000

scoreboard players operation $s.x_mot vehicles.calc *= $cos vehicles.calc
scoreboard players operation $s.z_mot vehicles.calc *= $cos vehicles.calc
execute if score $dir vehicles.calc matches 0..1 run scoreboard players operation $s.y_mot vehicles.calc += $max_motion vehicles.const
execute if score $dir vehicles.calc matches 3..4 run scoreboard players operation $s.y_mot vehicles.calc -= $max_motion vehicles.const
scoreboard players operation $s.y_mot vehicles.calc *= $sin vehicles.calc
scoreboard players operation $s.x_mot vehicles.calc /= $1000 vehicles.const
scoreboard players operation $s.y_mot vehicles.calc /= $1000 vehicles.const
scoreboard players operation $s.z_mot vehicles.calc /= $1000 vehicles.const
