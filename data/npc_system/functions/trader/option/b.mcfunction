advancement revoke @s only npc_system:trader/option_b
tag @s add npc.user
scoreboard players operation $temp npc.user = @s general.id
execute as @e[tag=npc.tag] if score @s npc.user = $temp npc.user run tag @s add npc.this
execute unless predicate npc_system:look_this as @e[type=minecraft:villager,tag=npc.trader_b,distance=0..6] run function npc_system:trader/option/error
tag @e[tag=npc.this] remove npc.this
tag @s remove npc.user
