scoreboard players operation @s npc.id = @e[limit=1,type=minecraft:interaction,tag=npc.this] npc.id
data modify entity @s Tags set from entity @e[limit=1,type=minecraft:interaction,tag=npc.this] Tags
tag @s add npc.idle
ride @s mount @e[limit=1,tag=npc.figure,tag=npc.this]
data modify entity @s data.Idle set from entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Idle
execute unless entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] run data modify entity @s data.Idle set from storage npc_system:common This.Idle
scoreboard players set @s npc.idle -1
