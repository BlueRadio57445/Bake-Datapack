execute rotated ~ 0 run summon marker ^ ^ ^5 {Tags:["air_tornado","new_air_tornado"]}
scoreboard players set @e[type=marker,tag=new_air_tornado] knowledge.object_duration 200
tag @e[type=marker,tag=new_air_tornado] remove new_air_tornado