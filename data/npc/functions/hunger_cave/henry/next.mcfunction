advancement revoke @s only npc:hunger_cave/henry/next

tag @e[tag=npc.hunger_cave.henry] add npc.this
function npc_system:common/next
tag @e[tag=npc.this] remove npc.this 
