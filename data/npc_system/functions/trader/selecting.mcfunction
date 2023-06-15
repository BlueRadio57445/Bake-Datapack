execute at @e[limit=1,tag=npc.figure,tag=npc.this] rotated ~ 0 positioned ~ ~1.4 ~ run function npc_system:trader/rotation
execute if predicate npc_system:trader/look_none run function npc_system:trader/option/look_none
execute if predicate npc_system:trader/look_b run function npc_system:trader/option/look_b
execute if predicate npc_system:trader/look_s run function npc_system:trader/option/look_s
execute if predicate npc_system:trader/look_d run function npc_system:trader/option/look_d
execute if predicate npc_system:trader/look_e run function npc_system:trader/option/look_e
title @s actionbar {"color":"aqua","text":"請右鍵點擊來選擇一個選項"}
