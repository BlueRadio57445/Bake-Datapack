execute rotated ~ 0 run summon armor_stand ^ ^ ^5 {Invisible:1b,Small:1b,Tags:["water_swirl","new_water_swirl"]}
scoreboard players set @e[type=armor_stand,tag=new_water_swirl] knowledge.object_duration 200
tag @e[type=armor_stand,tag=new_water_swirl] remove new_water_swirl