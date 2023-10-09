advancement revoke @s only npc:hunger_cave/pang_start

tag @e[tag=npc.hunger_cave.pang] add npc.this
function npc_system:common/start
tag @e[tag=npc.this] remove npc.this
