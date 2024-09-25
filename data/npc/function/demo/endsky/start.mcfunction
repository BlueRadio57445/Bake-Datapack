advancement revoke @s only npc:demo/endsky/start

tag @e[tag=npc.demo.endsky] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this 
