execute if data entity @e[limit=1,type=minecraft:marker,tag=npc.this] data.Dialogue.Options[].Condition run function npc_system:common/option/condition/update
execute if predicate npc_system:common/look_none run function npc_system:common/option/look_none
execute if predicate npc_system:common/look_a run function npc_system:common/option/look_a
execute if predicate npc_system:common/look_b run function npc_system:common/option/look_b
execute if predicate npc_system:common/look_c run function npc_system:common/option/look_c
execute if predicate npc_system:common/look_d run function npc_system:common/option/look_d
execute if predicate npc_system:common/look_e run function npc_system:common/option/look_e
