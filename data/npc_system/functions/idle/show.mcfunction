scoreboard players operation $system npc.id = @s npc.id
execute as @e[tag=npc.tag] if score @s npc.id = $system npc.id run tag @s add npc.this
kill @e[type=minecraft:text_display,tag=npc.idle,tag=npc.this]
data modify storage npc_system:common temp set from entity @s data.Idle[0].Duration
execute if data storage npc_system:common temp.max run function npc_system:idle/random
execute store result score $duration npc.timer run data get storage npc_system:common temp
scoreboard players operation $duration npc.timer *= $20 general.const
scoreboard players operation @s npc.timer = $gametime general.utils
scoreboard players operation @s npc.timer += $duration npc.timer
scoreboard players set @s npc.idle 1
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.name,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true},{"text":":"}]}',start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,0.355f,0.0f]}}
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.text,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"data.Idle[0].Text","entity":"@e[limit=1,type=minecraft:marker,tag=npc.this]","interpret":true}]}',transformation:{scale:[1.0f,1.0f,1.0f]}}
tag @e[tag=npc.this] remove npc.this
