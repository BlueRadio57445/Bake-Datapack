advancement revoke @s only npc:demo/davleek_start

tag @e[tag=npc.demo.davleek] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this 
