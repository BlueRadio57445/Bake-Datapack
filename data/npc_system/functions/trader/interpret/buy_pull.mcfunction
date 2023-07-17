data remove storage npc_system:trader Interpreted.Buy[0].buy.Name
data modify storage npc_system:trader Interpreted.Buy[0].buy.id set from block 0 16 0 Items[{Slot:0b}].id
data modify storage npc_system:trader Interpreted.Buy[0].buy.tag set from block 0 16 0 Items[{Slot:0b}].tag
execute unless data storage npc_system:trader Interpreted.Buy[0].buy.Count run data modify storage npc_system:trader Interpreted.Buy[0].buy.Count set value 1b

data remove storage npc_system:trader Interpreted.Buy[0].buyB.Name
data modify storage npc_system:trader Interpreted.Buy[0].buyB.id set from block 0 16 0 Items[{Slot:1b}].id
data modify storage npc_system:trader Interpreted.Buy[0].buyB.tag set from block 0 16 0 Items[{Slot:1b}].tag

data remove storage npc_system:trader Interpreted.Buy[0].sell.Name
execute unless data storage npc_system:trader Interpreted.Buy[0].sell.Count run data modify storage npc_system:trader Interpreted.Buy[0].sell.Count set value 1b
data modify storage npc_system:trader Interpreted.Buy[0].sell.id set from block 0 16 0 Items[{Slot:2b}].id
data modify storage npc_system:trader Interpreted.Buy[0].sell.tag set from block 0 16 0 Items[{Slot:2b}].tag

data modify storage npc_system:trader Interpreted.Buy append from storage npc_system:trader Interpreted.Buy[0]
data remove storage npc_system:trader Interpreted.Buy[0]

data remove block 0 16 0 Items[]
