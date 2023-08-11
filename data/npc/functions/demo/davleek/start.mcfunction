advancement revoke @s only npc:demo/davleek_start

tag @e[tag=npc.demo.davleek] add npc.this
data modify storage npc_system:common This set from storage npc:demo davleek

function npc_system:common/start
data modify storage npc:demo davleek.Normal set from storage npc_system:common This.Normal
tag @e[tag=npc.this] remove npc.this 
