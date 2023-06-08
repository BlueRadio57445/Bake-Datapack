execute as @e[type=interaction,tag=new_earth_field] on passengers run function knowledge:earth_field/init_animation
scoreboard players set @e[type=interaction,tag=new_earth_field] knowledge.earth_field 400
tag @e[type=interaction,tag=new_earth_field] remove new_earth_field