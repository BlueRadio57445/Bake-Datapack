execute positioned ~ ~1.4 ~ run function npc_system:common/option/summon_a
execute positioned ~ ~1.1 ~ run function npc_system:common/option/summon_b
execute unless data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data{Quest:1b} positioned ~ ~0.8 ~ run function npc_system:common/option/summon_e
