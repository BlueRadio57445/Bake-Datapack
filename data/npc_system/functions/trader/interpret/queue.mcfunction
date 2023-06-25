scoreboard players operation @s npc.trader_interpret = $pending npc.trader_interpret
scoreboard players add $pending npc.trader_interpret 1
execute if score @s npc.trader_interpret matches 0 run function npc_system:trader/interpret/main
