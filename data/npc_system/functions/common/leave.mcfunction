execute as @e[limit=1,type=minecraft:marker,tag=npc.this] if data entity @s data.Dialogue.Extra.LeaveCommand run function npc_system:common/extra/leave_command
execute as @e[limit=1,type=minecraft:marker,tag=npc.this,scores={npc.trader=1}] run function npc_system:trader/save_trade with entity @s data.Id
function npc_system:common/end
