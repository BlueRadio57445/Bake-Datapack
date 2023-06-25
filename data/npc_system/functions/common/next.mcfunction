execute if entity @e[limit=1,type=minecraft:marker,tag=npc.this,scores={npc.trader_interpret=-2}] run function npc_system:trader/interpret/update

execute unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Extra.Command run function npc_system:common/end_command
execute if score @s npc.trader matches 1 unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[] at @e[limit=1,tag=npc.figure,tag=npc.this] rotated ~ 0 run function npc_system:trader/options
execute if score @s npc.trader matches 0 unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Options[] run function npc_system:common/end
execute if score @s npc.state matches 1 unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] at @e[limit=1,tag=npc.figure,tag=npc.this] run function npc_system:common/options
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] run function npc_system:common/display_text
