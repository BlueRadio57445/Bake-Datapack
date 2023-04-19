data modify storage mobs:entity_follow temp set value {id:0,Pos:[0d,0d,0d],Rotation:[0f,0f]}
execute store result storage mobs:entity_follow temp.id int 1 run scoreboard players get @s mobs.id
data modify storage mobs:entity_follow temp.Pos set from entity @s Pos
data modify storage mobs:entity_follow temp.Rotation set from entity @s Rotation
execute if score @s mobs.y_displacement = @s mobs.y_displacement run function mobs:entity_follow/y_displacement
data modify storage mobs:entity_follow List append from storage mobs:entity_follow temp
