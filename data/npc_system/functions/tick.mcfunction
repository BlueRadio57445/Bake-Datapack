execute as @e[tag=npc.figure,scores={npc.user=0..}] at @s run function npc_system:common/figure
execute as @e[tag=npc.figure,scores={npc.reset=1..}] at @s run function npc_system:common/reset
execute as @e[limit=1,type=minecraft:marker,scores={npc.trader_interpret=0}] run function npc_system:trader/interpret/main
