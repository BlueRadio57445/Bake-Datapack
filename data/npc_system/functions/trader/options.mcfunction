scoreboard players set @s npc.state 3
scoreboard players set @s npc.option 0
scoreboard players set @s npc.look_option 0
execute positioned ~ ~1.4 ~ run function npc_system:trader/option/summon_b
execute positioned ~ ~1.4 ~ run function npc_system:trader/option/summon_s
execute positioned ~ ~1.1 ~ run function npc_system:trader/option/summon_d
execute positioned ~ ~0.8 ~ run function npc_system:trader/option/summon_e
scoreboard players operation @e[tag=npc.option,tag=npc.this] npc.user = @s general.id
