data modify entity @s NoAI set value 1b
data remove entity @s Owner
item replace entity @s horse.saddle with air
scoreboard players set @s vehicles.descending 0
scoreboard players set @s vehicles.x_mot 0
scoreboard players set @s vehicles.y_mot 0
scoreboard players set @s vehicles.z_mot 0
scoreboard players set @s vehicles.moving 0
scoreboard players set @s vehicles.accel 0
execute unless predicate vehicles:sandwich/is_floating on passengers as @s[type=minecraft:area_effect_cloud] run ride @s dismount
