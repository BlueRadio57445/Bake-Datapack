data remove block 0 16 0 Items[]

data modify entity @s data.Buy[].interpret set value 1b
execute if data entity @s data.Buy[{interpreted:1b}] run data modify entity @s data.Buy[{interpreted:1b}].interpret set value 0b
data modify storage npc_system:trader Interpret.Buy set value []
data modify storage npc_system:trader Interpret.Buy append from entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[].interpret
data remove storage npc_system:trader Interpret.Buy[].interpret

data modify storage npc_system:trader Interpreted.Buy set value []
execute if data storage npc_system:trader Interpret.Buy[] run function npc_system:trader/interpret/buy

data modify entity @s data.Sell[].interpret set value 1b
execute if data entity @s data.Sell[{interpreted:1b}] run data modify entity @s data.Sell[{interpreted:1b}].interpret set value 0b
data modify storage npc_system:trader Interpret.Sell set value []
data modify storage npc_system:trader Interpret.Sell append from entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[].interpret
data remove storage npc_system:trader Interpret.Sell[].interpret

data modify storage npc_system:trader Interpreted.Sell set value []
execute if data storage npc_system:trader Interpret.Sell[] run function npc_system:trader/interpret/sell

data modify entity @s data.Buy append from storage npc_system:trader Interpreted.Buy[]
data modify entity @s data.Buy[].interpreted set value 1b
data modify entity @s data.Sell append from storage npc_system:trader Interpreted.Sell[]
data modify entity @s data.Sell[].interpreted set value 1b
data remove block 0 16 0 Items[]

$data modify storage npc:$(region) $(npc).Buy set from entity @s data.Buy
$data modify storage npc:$(region) $(npc).Sell set from entity @s data.Sell
