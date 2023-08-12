execute positioned ~ ~1.4 ~ run function npc_system:common/option/summon_a
execute positioned ~ ~1.1 ~ run function npc_system:common/option/summon_b
execute as @e[limit=1,type=minecraft:marker,tag=npc.this] unless data entity @s data{Quest:1b} unless data entity @s data{NoExit:1b} positioned ~ ~0.8 ~ run function npc_system:common/option/summon_e
