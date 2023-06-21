advancement revoke @s only npc:demo/howhow_start

tag @e[tag=npc.demo.howhow] add npc.this
data modify storage npc_system:common This set from storage npc:demo howhow

function npc_system:common/start
data modify storage npc:demo howhow.Greeting set from storage npc_system:common This.Greeting
tag @e[tag=npc.this] remove npc.this 
