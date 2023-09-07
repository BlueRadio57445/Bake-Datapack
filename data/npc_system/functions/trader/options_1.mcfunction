execute positioned ~ ~1.4 ~ run function npc_system:trader/option/summon_b
execute positioned ~ ~1.4 ~ run function npc_system:trader/option/summon_s
execute if data entity @s data.TraderNormal[] positioned ~ ~1.1 ~ run function npc_system:trader/option/summon_d
execute positioned ~ ~0.8 ~ run function npc_system:trader/option/summon_e
scoreboard players operation @e[tag=npc.option,tag=npc.this] npc.user = @s general.id
