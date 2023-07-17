advancement revoke @s only npc:demo/warrior_next
tag @e[tag=npc.demo.warrior] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
