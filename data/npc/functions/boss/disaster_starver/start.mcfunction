advancement revoke @s only npc:boss/disaster_starver_start

tag @e[tag=npc.boss.disaster_starver] add npc.this
data modify entity @s data set from storage npc:boss disaster_starver

function npc_system:common/start
data modify storage npc:boss disaster_starver.Normal set from entity @s data.Normal
tag @e[tag=npc.this] remove npc.this 
