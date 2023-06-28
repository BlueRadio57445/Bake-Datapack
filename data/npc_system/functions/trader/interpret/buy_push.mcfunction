data modify storage general:gcm str_list set value ["loot replace block 0 16 0 container.0 1 loot "]
data modify storage general:gcm str_list append from storage npc_system:trader Interpret.Buy[0].buy.Name
function general:gcm/push/server/string_list

data modify storage general:gcm str_list set value ["loot replace block 0 16 0 container.1 1 loot "]
data modify storage general:gcm str_list append from storage npc_system:trader Interpret.Buy[0].buyB.Name
function general:gcm/push/server/string_list

data modify storage general:gcm str_list set value ["loot replace block 0 16 0 container.2 1 loot "]
data modify storage general:gcm str_list append from storage npc_system:trader Interpret.Buy[0].sell.Name
function general:gcm/push/server/string_list

data modify storage general:gcm str set value "execute as @e[limit=1,type=minecraft:marker,scores={npc.trader_interpret=-1}] run function npc_system:trader/interpret/buy_pull"
function general:gcm/push/server/string

data modify storage npc_system:trader Interpreted.Buy append from storage npc_system:trader Interpret.Buy[0]
data remove storage npc_system:trader Interpret.Buy[0]

execute if data storage npc_system:trader Interpret.Buy[0] run function npc_system:trader/interpret/buy_push
