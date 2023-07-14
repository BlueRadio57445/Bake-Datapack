data modify entity @s data.Buy append from storage npc_system:trader Interpreted.Buy[]
data modify entity @s data.Buy[].interpreted set value 1b
data modify entity @s data.Sell append from storage npc_system:trader Interpreted.Sell[]
data modify entity @s data.Sell[].interpreted set value 1b
scoreboard players remove @e[type=minecraft:marker,scores={npc.trader_interpret=1..}] npc.trader_interpret 1
scoreboard players set @s npc.trader_interpret -2
scoreboard players remove $pending npc.trader_interpret 1
data remove block 0 16 0 Items[]
