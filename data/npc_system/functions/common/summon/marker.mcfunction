data modify entity @s Tags set from entity @e[limit=1,type=minecraft:interaction,tag=npc.this] Tags
ride @s mount @e[limit=1,tag=npc.figure,tag=npc.this]
$data modify entity @s data.Id.region set value "$(region)"
$data modify entity @s data.Id.npc set value "$(npc)"
$data modify entity @s data.Idle set from storage npc:$(region) $(npc).Idle
data modify entity @s data.Rotation set from entity @e[limit=1,tag=npc.figure,tag=npc.this] Rotation

execute if data entity @s data.Idle[] run function npc_system:idle/marker

#scoreboard players set $temp npc.state 1
#execute unless data storage npc_system:common This.Buy[].buy.Name unless data storage npc_system:common This.Buy[].sell.Name unless data storage npc_system:common This.Sell[].buy.Name unless data storage npc_system:common This.Sell[].sell.Name run scoreboard players set $temp npc.state 0
#execute if score $temp npc.state matches 1 run function npc_system:trader/interpret/queue
