execute as @e[tag=npc.figure,scores={npc.user=0..}] at @s run function npc_system:common/figure
execute as @e[tag=npc.figure,scores={npc.reset=1..}] at @s run function npc_system:common/reset
