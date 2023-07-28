scoreboard players set @e[type=minecraft:interaction,tag=npc.this] npc.occupied 0
data modify entity @e[limit=1,type=minecraft:text_display,tag=npc.this] text set value '{"color":"black","text":"","extra":[{"nbt":"CustomName","entity":"@e[limit=1,tag=npc.figure,tag=npc.this]","interpret":true}]}'
# 流水編號，方便得知哪些實體屬於同一個NPC
scoreboard players operation @e[tag=npc.this] npc.id = $npcCount npc.id
scoreboard players add $npcCount npc.id 1
execute if data storage npc_system:common This.Idle[] summon minecraft:marker run function npc_system:idle/summon/temp_storage
tag @e[tag=npc.this] remove npc.this
