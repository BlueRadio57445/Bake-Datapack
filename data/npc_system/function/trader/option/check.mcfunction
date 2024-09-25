tag @e[tag=npc.this] remove npc.this
tag @s add npc.this
execute if entity @a[limit=1,tag=npc.user,predicate=npc_system:look_this] run function npc_system:trader/option/close