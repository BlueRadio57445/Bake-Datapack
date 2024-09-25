execute as @s[scores={npc.state=2}] run function npc_system:common/selecting
execute as @s[scores={npc.state=3}] run function npc_system:trader/selecting
execute unless entity @e[type=minecraft:interaction,tag=npc.this,distance=..6] run function npc_system:common/leave
