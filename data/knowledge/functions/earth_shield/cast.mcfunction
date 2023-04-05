scoreboard players set @s knowledge.earth_shield 3
summon item_display ~ ~ ~ {item:{id:"shield",Count:1b},transformation:{translation:[0.28f,1.3f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},Tags:["earth_shield","new_earth_shield"],Rotation:[0.0f,0.0f]}
summon item_display ~ ~ ~ {item:{id:"shield",Count:1b},transformation:{translation:[0.28f,1.3f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},Tags:["earth_shield","new_earth_shield"],Rotation:[120.0f,0.0f]}
summon item_display ~ ~ ~ {item:{id:"shield",Count:1b},transformation:{translation:[0.28f,1.3f,1f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f]},Tags:["earth_shield","new_earth_shield"],Rotation:[240.0f,0.0f]}
scoreboard players operation @e[type=item_display,tag=new_earth_shield] knowledge.id = @s general.id
tag @e remove new_earth_shield