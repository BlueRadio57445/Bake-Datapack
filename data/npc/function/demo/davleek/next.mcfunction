advancement revoke @s only npc:demo/davleek/next

tag @e[tag=npc.demo.davleek] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
