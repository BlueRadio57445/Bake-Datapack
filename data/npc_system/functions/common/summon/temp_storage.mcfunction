scoreboard players operation @s npc.user = @e[limit=1,type=minecraft:interaction,tag=npc.this] npc.user
data modify entity @s Tags set from entity @e[limit=1,type=minecraft:interaction,tag=npc.this] Tags
tag @s add npc.common
ride @s mount @e[limit=1,tag=npc.figure,tag=npc.this]
data modify entity @s data.Texts set from storage npc_system:common This.Dialogue.Texts
data modify entity @s data.Options set from storage npc_system:common This.Dialogue.Options
data modify entity @s data.Quest set from storage npc_system:common This.Dialogue.Quest
data modify entity @s data.Extra set from storage npc_system:common This.Dialogue.Extra
data modify entity @s data.TraderNormal set from storage npc_system:common This.TraderNormal
data modify entity @s data.TraderNormalRandom set from storage npc_system:common This.TraderNormalRandom
data modify entity @s data.Exit set from storage npc_system:common This.Exit
data modify entity @s data.NoExit set from storage npc_system:common This.NoExit
data modify entity @s data.Buy set from storage npc_system:common This.Buy
data modify entity @s data.Sell set from storage npc_system:common This.Sell
data modify entity @s data.Idle set from storage npc_system:common This.Idle
data modify entity @s data.Rotation set from entity @e[limit=1,tag=npc.figure,tag=npc.this] Rotation
data modify entity @s data.Rotation set from entity @e[limit=1,type=minecraft:marker,tag=npc.old] data.Rotation
kill @e[type=minecraft:marker,tag=npc.old]

execute if data storage npc_system:common This.Buy[].buy.Name run function npc_system:trader/interpret/queue
execute unless data storage npc_system:common This.Buy[].buy.Name if data storage npc_system:common This.Sell[].buy.Name run function npc_system:trader/interpret/queue
