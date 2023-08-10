scoreboard players set @s npc.state 0
scoreboard players set @e[limit=1,type=minecraft:interaction,tag=npc.this,tag=!npc.option] npc.occupied 0
scoreboard players reset @e[tag=npc.this] npc.user
scoreboard players set @e[limit=1,tag=npc.figure,tag=npc.this] npc.reset 20
data merge entity @e[limit=1,type=minecraft:text_display,tag=npc.name,tag=npc.this] {text:'{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true}]}',start_interpolation:0,interpolation_duration:2,transformation:{translation:[0.0f,-0.255f,0.0f]}}
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] run data modify entity @s Rotation set from entity @s data.Rotation
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Idle[] at @s summon minecraft:marker run function npc_system:idle/summon/temp_storage
kill @e[type=minecraft:text_display,tag=npc.text,tag=npc.this]
tp @e[type=minecraft:villager,tag=npc.option,tag=npc.this] ~ -100 ~
kill @e[tag=npc.option,tag=npc.this]
function npc_system:actionbar/state_0
