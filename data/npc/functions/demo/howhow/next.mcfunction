advancement revoke @s only npc:demo/howhow_next

tag @e[tag=npc.demo.howhow] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
