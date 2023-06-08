execute as @e[type=minecraft:block_display,tag=new_earth_wall] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
scoreboard players set @e[tag=new_earth_wall] knowledge.earth_wall 200
tag @e[tag=new_earth_wall] remove new_earth_wall