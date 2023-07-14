execute if entity @e[limit=1,type=minecraft:marker,tag=npc.this,scores={npc.trader_interpret=-2}] run function npc_system:trader/interpret/update

execute unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] run function npc_system:common/empty
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Texts[] run function npc_system:common/display_text
