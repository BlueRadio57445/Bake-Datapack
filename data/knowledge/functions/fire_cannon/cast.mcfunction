summon marker ~ ~ ~ {Tags:["fire_cannon","new_fire_cannon"]}
execute as @e[type=marker,tag=new_fire_cannon] positioned ~ ~1.6 ~ run tp @s ^ ^ ^1.5 ~ ~

tag @e[type=marker,tag=new_fire_cannon] remove new_fire_cannon
schedule function knowledge:fire_cannon/schedule_effect 1t append

scoreboard players set @s knowledge.end_fire 60