execute as @s[advancements={general:inventory_changed=true}] if data entity @e[limit=1,type=minecraft:marker,tag=npc.common,tag=npc.this] data.Options[].Condition.Item run function npc_system:common/option/condition/update
execute if predicate npc_system:common/look_none run function npc_system:common/option/look_none
execute if predicate npc_system:common/look_a run function npc_system:common/option/look_a
execute if predicate npc_system:common/look_b run function npc_system:common/option/look_b
execute if predicate npc_system:common/look_c run function npc_system:common/option/look_c
execute if predicate npc_system:common/look_d run function npc_system:common/option/look_d
execute if predicate npc_system:common/look_e run function npc_system:common/option/look_e
title @s actionbar {"color":"aqua","text":"請右鍵點擊來選擇一個選項"}
