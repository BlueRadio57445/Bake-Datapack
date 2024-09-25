scoreboard players reset @s npc.count
data modify entity @s Rotation set from entity @s data.Rotation
data remove entity @s data.Dialogue
execute if score @s npc.trader matches 1 run function npc_system:trader/save_trade with entity @s data.Id
execute if data entity @s data.Idle[] run function npc_system:idle/marker
