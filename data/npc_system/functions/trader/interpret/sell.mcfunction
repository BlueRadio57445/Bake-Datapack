data modify storage npc_system:trader Interpret.LootTable set value {buy:"empty",buyB:"empty",sell:"empty"}
data modify storage npc_system:trader Interpret.LootTable.buy set from storage npc_system:trader Interpret.Sell[0].buy.Name
data modify storage npc_system:trader Interpret.LootTable.buyB set from storage npc_system:trader Interpret.Sell[0].buyB.Name
data modify storage npc_system:trader Interpret.LootTable.sell set from storage npc_system:trader Interpret.Sell[0].sell.Name

function npc_system:trader/interpret/loot_table with storage npc_system:trader Interpret.LootTable

data modify storage npc_system:trader Interpreted.Sell append from storage npc_system:trader Interpret.Sell[0]
data remove storage npc_system:trader Interpret.Sell[0]

data remove storage npc_system:trader Interpreted.Sell[-1].buy.Name
data modify storage npc_system:trader Interpreted.Sell[-1].buy.id set from block 0 16 0 Items[{Slot:0b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].buy.tag set from block 0 16 0 Items[{Slot:0b}].tag
execute unless data storage npc_system:trader Interpreted.Sell[-1].buy.Count run data modify storage npc_system:trader Interpreted.Sell[-1].buy.Count set value 1b

data remove storage npc_system:trader Interpreted.Sell[-1].buyB.Name
data modify storage npc_system:trader Interpreted.Sell[-1].buyB.id set from block 0 16 0 Items[{Slot:1b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].buyB.tag set from block 0 16 0 Items[{Slot:1b}].tag

data remove storage npc_system:trader Interpreted.Sell[-1].sell.Name
execute unless data storage npc_system:trader Interpreted.Sell[-1].sell.Count run data modify storage npc_system:trader Interpreted.Sell[-1].sell.Count set value 1b
data modify storage npc_system:trader Interpreted.Sell[-1].sell.id set from block 0 16 0 Items[{Slot:2b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].sell.tag set from block 0 16 0 Items[{Slot:2b}].tag

data remove block 0 16 0 Items[]

execute if data storage npc_system:trader Interpret.Sell[0] run function npc_system:trader/interpret/sell
