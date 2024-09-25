advancement revoke @s only npc:demo/radio/next

tag @e[tag=npc.demo.radio] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
