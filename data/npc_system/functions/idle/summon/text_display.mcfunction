scoreboard players operation @s npc.id = @e[limit=1,type=minecraft:interaction,tag=npc.this] npc.id
data modify entity @s Tags set from entity @e[limit=1,type=minecraft:interaction,tag=npc.this] Tags
tag @s add npc.text
tag @s add npc.idle
data merge entity @s {billboard:"center",background:-1073741825,transformation:{translation:[0.0f,-0.255f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}
data modify entity @s text set value '{"color":"black","text":"","extra":[{"nbt":"data.Idle[0].Text","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}'