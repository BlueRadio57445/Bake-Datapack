advancement revoke @s only npc:demo/howhow_start

tag @e[tag=npc.demo.howhow] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this 
