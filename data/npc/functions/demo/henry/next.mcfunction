advancement revoke @s only npc:demo/henry_next
tag @e[tag=npc.demo.henry] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
