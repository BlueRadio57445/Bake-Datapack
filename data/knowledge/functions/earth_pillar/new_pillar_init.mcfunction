execute as @e[type=interaction,tag=new_earth_pillar] on passengers run function knowledge:earth_pillar/init_animation
scoreboard players set @e[type=interaction,tag=new_earth_pillar] knowledge.object_duration 100
tag @e[type=interaction,tag=new_earth_pillar] remove new_earth_pillar