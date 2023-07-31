advancement revoke @s only npc:boss/disaster_starver_start

tag @e[tag=npc.boss.disaster_starver] add npc.this
data modify storage npc_system:common This set from storage npc:boss disaster_starver

function npc_system:common/start
data modify storage npc:boss disaster_starver.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
