advancement revoke @s only npc:demo/radio/start

tag @e[tag=npc.demo.radio] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this 
