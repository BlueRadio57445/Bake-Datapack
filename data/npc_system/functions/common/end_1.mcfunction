scoreboard players reset @s npc.count
data modify entity @s Rotation set from entity @s data.Rotation
data remove entity @s data.Dialogue
execute if data entity @s data.Idle[] run function npc_system:idle/marker
