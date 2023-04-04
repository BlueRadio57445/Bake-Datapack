summon marker ^ ^ ^ {Tags:["water_wave","new_water_wave"]}
scoreboard players set @e[tag=new_water_wave] knowledge.water_wave 30
execute as @e[tag=new_water_wave] positioned ~ ~1.4 ~ rotated ~ 0 run tp @s ^ ^ ^1 ~ ~
tag @e[tag=new_water_wave] remove new_water_wave