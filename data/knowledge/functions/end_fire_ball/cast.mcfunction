execute positioned ~ ~1.6 ~ run summon minecraft:armor_stand ^ ^ ^1 {Tags:["end_fire_ball","new_fire_ball"],Invisible:1b}
execute positioned 0.0 0.0 0.0 run tp @e[tag=tri] ^ ^ ^2
execute as @e[tag=new_fire_ball] run data modify entity @s Motion set from entity @e[tag=tri,limit=1] Pos
tp @e[tag=tri] 0.0 0.0 0.0
scoreboard players set @e[tag=new_fire_ball] knowledge.fire_ball 80
tag @e[tag=new_fire_ball] remove new_fire_ball

playsound minecraft:entity.arrow.shoot master @a[distance=..5] ^ ^ ^1 1 