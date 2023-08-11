scoreboard players set @s npc.trader_interpret -1
data remove block 0 16 0 Items[]

data modify entity @s data.Buy[].interpret set value 1b
execute if data entity @s data.Buy[{interpreted:1b}] run data modify entity @s data.Buy[{interpreted:1b}].interpret set value 0b
data modify storage npc_system:trader Interpret.Buy set value []
data modify storage npc_system:trader Interpret.Buy append from entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[{interpret:1b}]
data remove entity @s data.Buy[].interpret
data remove storage npc_system:trader Interpret.Buy[].interpret

data modify storage npc_system:trader Interpreted.Buy set value []
execute if data storage npc_system:trader Interpret.Buy[] run function npc_system:trader/interpret/buy_push

data modify entity @s data.Sell[].interpret set value 1b
execute if data entity @s data.Sell[{interpreted:1b}] run data modify entity @s data.Sell[{interpreted:1b}].interpret set value 0b
data modify storage npc_system:trader Interpret.Sell set value []
data modify storage npc_system:trader Interpret.Sell append from entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[{interpret:1b}]
data remove entity @s data.Sell[].interpret
data remove storage npc_system:trader Interpret.Sell[].interpret

data modify storage npc_system:trader Interpreted.Sell set value []
execute if data storage npc_system:trader Interpret.Sell[] run function npc_system:trader/interpret/sell_push

data modify storage general:gcm str set value "execute as @e[limit=1,type=minecraft:marker,scores={npc.trader_interpret=-1}] run function npc_system:trader/interpret/done"
function general:gcm/push/server/string
