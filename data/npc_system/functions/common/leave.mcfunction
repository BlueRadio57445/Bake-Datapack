execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Extra.LeaveCommand run function npc_system:common/extra/leave_command
function npc_system:common/end
