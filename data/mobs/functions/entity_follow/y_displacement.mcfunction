execute store result score $temp mobs.y_displacement run data get storage mobs:entity_follow temp.Pos[1] 10000
scoreboard players operation $temp mobs.y_displacement += @s mobs.y_displacement
execute store result storage mobs:entity_follow temp.Pos[1] double 0.0001 run scoreboard players get $temp mobs.y_displacement
