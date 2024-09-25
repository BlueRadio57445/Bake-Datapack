advancement revoke @s only npc:boss/disaster_starver/start

tag @e[tag=npc.boss.disaster_starver] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this 
