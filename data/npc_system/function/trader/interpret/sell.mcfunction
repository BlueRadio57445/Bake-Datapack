data modify storage npc_system:trader Interpret.LootTable set value {buy:"empty",buyB:"empty",sell:"empty"}
data modify storage npc_system:trader Interpret.LootTable.buy set from storage npc_system:trader Interpret.Sell[0].buy.Name
data modify storage npc_system:trader Interpret.LootTable.buyB set from storage npc_system:trader Interpret.Sell[0].buyB.Name
data modify storage npc_system:trader Interpret.LootTable.sell set from storage npc_system:trader Interpret.Sell[0].sell.Name

function npc_system:trader/interpret/loot_table with storage npc_system:trader Interpret.LootTable

data modify storage npc_system:trader Interpreted.Sell append from storage npc_system:trader Interpret.Sell[0]
data remove storage npc_system:trader Interpret.Sell[0]

data remove storage npc_system:trader Interpreted.Sell[-1].buy.Name
data modify storage npc_system:trader Interpreted.Sell[-1].buy.id set from block 0 16 0 Items[{Slot:0b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].buy.components set from block 0 16 0 Items[{Slot:0b}].components
execute unless data storage npc_system:trader Interpreted.Sell[-1].buy.count run data modify storage npc_system:trader Interpreted.Sell[-1].buy.count set value 1b

data remove storage npc_system:trader Interpreted.Sell[-1].buyB.Name
data modify storage npc_system:trader Interpreted.Sell[-1].buyB.id set from block 0 16 0 Items[{Slot:1b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].buyB.components set from block 0 16 0 Items[{Slot:1b}].components

data remove storage npc_system:trader Interpreted.Sell[-1].sell.Name
execute unless data storage npc_system:trader Interpreted.Sell[-1].sell.count run data modify storage npc_system:trader Interpreted.Sell[-1].sell.count set value 1b
data modify storage npc_system:trader Interpreted.Sell[-1].sell.id set from block 0 16 0 Items[{Slot:2b}].id
data modify storage npc_system:trader Interpreted.Sell[-1].sell.components set from block 0 16 0 Items[{Slot:2b}].components

data remove block 0 16 0 Items[]

execute if data storage npc_system:trader Interpret.Sell[0] run function npc_system:trader/interpret/sell
