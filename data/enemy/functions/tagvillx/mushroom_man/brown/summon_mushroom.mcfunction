summon item_display ~ ~1 ~ {item:{Count:1b,id:"minecraft:brown_mushroom"},teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["mushroom_display","new"]}

scoreboard players set @e[tag=mushroom_display,tag=new,type=item_display] enemy.mushroom_man.grow 40

kill @s

tag @e[tag=mushroom_display,tag=new,type=item_display] remove new