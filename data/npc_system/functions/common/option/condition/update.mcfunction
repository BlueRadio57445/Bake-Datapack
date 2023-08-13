scoreboard players set @s npc.look_option 0
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Options[0].Condition run function npc_system:common/option/condition/update_a
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Options[1].Condition run function npc_system:common/option/condition/update_b
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Options[2].Condition run function npc_system:common/option/condition/update_c
execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Options[3].Condition run function npc_system:common/option/condition/update_d

